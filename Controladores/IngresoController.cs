using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using AppIngreso.Modelos;
using Microsoft.AspNetCore.Cors;
using Dapper;
using Newtonsoft.Json.Linq;
using AppIngreso.Contratos;

namespace AppIngreso.Controladores
{
  [Route("API/[controller]")]
  [ApiController]
  [EnableCors("ReglasCors")]
  public class IngresoController : ControllerBase
  {
    public readonly IngresoContext _dbContext;
    private IConfiguration configuration;

    public IngresoController(IngresoContext _context, IConfiguration configuration)
    {
      _dbContext = _context;
      this.configuration = configuration;
    }

    [Route("informacion-estado-ciudad")]
    [HttpGet]
    public async Task<string> GetInformacionEstadoCiudad(string ciudad)
    {
      var connection = _dbContext.Database.GetDbConnection();
      CiudadDatos? datos = connection.Query<CiudadDatos>(@"SELECT 
                                  pais.idPais,
                                  ciu.idCiudad,
                                  ciu.nombre AS ciudad,
                                  pais.nombre AS pais,
                                  codigo AS codigoPais,
                                  latitud,
                                  longitud
                               FROM Ciudad ciu
                               INNER JOIN Pais pais
                                  ON ciu.idPais = pais.idPais
                               WHERE ciu.nombre like '%' + @ciudad + '%';",
                                 new
                                 {
                                   ciudad
                                 }).FirstOrDefault();

      if (datos == null)
      {
        throw new Exception("No se encontró información de la ciudad. Por favor verifique si está correctamente escrito el nombre de la ciudad.");
      }

      string responseNews = "";
      string responseWeather = "";

      HttpClientHandler handler = new()
      {
        ClientCertificateOptions = ClientCertificateOption.Automatic,
      };
      using HttpClient client = new(handler)
      {
        Timeout = new System.TimeSpan(0, 20, 59)
      };

      try
      {
        string url = configuration["APINews:URL"];
        string apikey = configuration["APINews:apiKey"];
        string urlConParametros = $"{url}?apiKey={apikey}&country={datos.CodigoPais}";

        // Crear un objeto HttpRequestMessage para configurar la solicitud
        HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Get, urlConParametros);
        request.Headers.Add("User-Agent", "MiApp/1.0");
        request.Headers.Add("Connection", "keep-alive");
        request.Headers.Add("Accept", "*/*");

        // Realizar una solicitud GET a la API y obtener la respuesta
        using var response = await client.SendAsync(request);
        using HttpContent content = response.Content;

        // Verificar si la solicitud fue exitosa (código de estado 200)
        if (response.IsSuccessStatusCode)
        {
          // Leer el contenido de la respuesta como una cadena
          responseNews = await response.Content.ReadAsStringAsync();
        }
        else
        {
          // Si la solicitud no fue exitosa, mostrar el código de estado de la respuesta
          throw new Exception($"Error al hacer la solicitud: {response.StatusCode}");
        }
      }
      catch (HttpRequestException e)
      {
        // Manejar excepciones relacionadas con la solicitud HTTP
        throw new Exception($"Error al consultar las noticias: {e.Message}");
      }

      try
      {
        string url = configuration["APIWeather:URL"];
        string apikey = configuration["APIWeather:apiKey"];
        string urlConParametros = $"{url}?appid={apikey}&lat={datos.Latitud}&lon={datos.Longitud}&lang=ES";
        // Crear un objeto HttpRequestMessage para configurar la solicitud
        HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Get, urlConParametros);
        request.Headers.Add("User-Agent", "MiApp/1.0");
        request.Headers.Add("Connection", "keep-alive");
        request.Headers.Add("Accept", "*/*");

        // Realizar una solicitud GET a la API y obtener la respuesta
        using var response = await client.GetAsync(urlConParametros);
        using HttpContent content = response.Content;

        // Verificar si la solicitud fue exitosa
        if (response.IsSuccessStatusCode)
        {
          // Leer el contenido de la respuesta como una cadena
          responseWeather = await response.Content.ReadAsStringAsync();
        }
        else
        {
          // Si la solicitud no fue exitosa, mostrar el código de estado de la respuesta
          throw new Exception($"Error al consultar la información del clima: {response.StatusCode}");
        }
      }
      catch (HttpRequestException e)
      {
        // Manejar excepciones relacionadas con la solicitud HTTP
        throw new Exception($"Error al hacer la solicitud: {e.Message}");
      }

      // Deserializar ambos JSON en objetos JToken
      JToken token1 = JToken.Parse(responseNews);
      JToken token2 = JToken.Parse(responseWeather);

      // Convertir los JToken a JObject
      JObject objeto1 = (JObject)token1;
      JObject objeto2 = (JObject)token2;

      // Combinar los dos objetos JObject en uno solo
      objeto1.Merge(objeto2, new JsonMergeSettings
      {
        MergeArrayHandling = MergeArrayHandling.Union
      });

      //Almacenar historial de la busqueda
      Historial historial = new()
      {
        Ciudad = ciudad,
        Datos = objeto1.ToString(),
        FechaConsulta = DateTime.Now
      };
      _dbContext.Historial.Add(historial);
      _dbContext.SaveChanges();

      return objeto1.ToString();
    }

    [Route("get-historial")]
    [HttpGet]
    public IEnumerable<HistorialDatos> GetHistorial(int paginas = 0)
    {
      var connection = _dbContext.Database.GetDbConnection();

      //Si es consultada por la API, se busca el historial completo
      if (paginas == 0)
      {
        return connection.Query<HistorialDatos>("SELECT ciudad, datos as info FROM historial");
      }
      //Si es consultada por el sitio web, se realiza un filtro por filas
      else
      {
        return connection.Query<HistorialDatos>("SELECT ciudad, datos as info FROM historial ORDER BY fechaConsulta DESC;", new { paginas}).Take(paginas);
      }
    }
  }
}