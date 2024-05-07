using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace AppIngreso.Modelos;

public partial class Pais
{
  public int IdPais { get; set; }

  public string Nombre { get; set; } = null!;

  public string Codigo { get; set; } = null!;

  [JsonIgnore]
  public virtual ICollection<Ciudad> Ciudades { get; set; } = new List<Ciudad>();
}