using System;
using System.Collections.Generic;

namespace AppIngreso.Modelos;

public partial class Historial
{
    public long Id { get; set; }

    public string Ciudad { get; set; } = null!;

    public string Datos { get; set; } = null!;

    public DateTime FechaConsulta { get; set; }
}
