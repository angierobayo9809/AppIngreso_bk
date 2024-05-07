using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace AppIngreso.Modelos;

public partial class Ciudad
{
  public long IdCiudad { get; set; }

  public int IdPais { get; set; }

  public string Nombre { get; set; } = null!;

  public decimal Latitud { get; set; }

  public decimal Longitud { get; set; }

  [JsonIgnore]
  public virtual Pais IdPaisNavigation { get; set; } = null!;
}