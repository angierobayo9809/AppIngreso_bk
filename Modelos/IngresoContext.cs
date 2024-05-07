using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace AppIngreso.Modelos;

public partial class IngresoContext : DbContext
{
  public IngresoContext()
  {
  }

  public IngresoContext(DbContextOptions<IngresoContext> options)
      : base(options)
  {
  }

  public virtual DbSet<Ciudad> Ciudad { get; set; }

  public virtual DbSet<Historial> Historial { get; set; }

  public virtual DbSet<Pais> Pais { get; set; }

  protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
  {

  }

  protected override void OnModelCreating(ModelBuilder modelBuilder)
  {
    modelBuilder.Entity<Ciudad>(entity =>
    {
      entity.HasKey(e => e.IdCiudad).HasName("PK__Ciudad__AEA2A71B6AAA16CD");

      entity.ToTable("Ciudad");

      entity.Property(e => e.IdCiudad).HasColumnName("idCiudad");
      entity.Property(e => e.IdPais).HasColumnName("idPais");
      entity.Property(e => e.Latitud)
              .HasColumnType("decimal(11, 3)")
              .HasColumnName("latitud");
      entity.Property(e => e.Longitud)
              .HasColumnType("decimal(11, 3)")
              .HasColumnName("longitud");
      entity.Property(e => e.Nombre)
              .HasMaxLength(100)
              .IsUnicode(false)
              .HasColumnName("nombre");

      entity.HasOne(d => d.IdPaisNavigation).WithMany(p => p.Ciudades)
              .HasForeignKey(d => d.IdPais)
              .OnDelete(DeleteBehavior.ClientSetNull)
              .HasConstraintName("fk_ciudad_idPais");
    });

    modelBuilder.Entity<Historial>(entity =>
    {
      entity.HasKey(e => e.Id).HasName("PK__historia__3213E83F51804656");

      entity.ToTable("historial");

      entity.Property(e => e.Id).HasColumnName("id");
      entity.Property(e => e.Ciudad)
              .HasMaxLength(100)
              .IsUnicode(false)
              .HasColumnName("ciudad");
      entity.Property(e => e.FechaConsulta)
              .HasColumnType("datetime")
              .HasColumnName("fechaConsulta");
      entity.Property(e => e.Datos).HasColumnName("datos");
    });

    modelBuilder.Entity<Pais>(entity =>
    {
      entity.HasKey(e => e.IdPais).HasName("PK__Pais__BD2285E3A61079CD");

      entity.Property(e => e.IdPais)
              .ValueGeneratedNever()
              .HasColumnName("idPais");
      entity.Property(e => e.Codigo)
              .HasMaxLength(2)
              .IsUnicode(false)
              .HasColumnName("codigo");
      entity.Property(e => e.Nombre)
              .HasMaxLength(100)
              .IsUnicode(false)
              .HasColumnName("nombre");
    });

    OnModelCreatingPartial(modelBuilder);
  }

  partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}