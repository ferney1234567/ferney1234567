class Senamon {
  String nombre;
  int nivel;
  String tipo;
  double peso;
  int puntosSalud;
  int nivelAtaque;
  String fase;
  int nivelEnergia;
  String descripcion;


  Senamon(this.nombre,this.nivel,this.tipo,this.peso,this.puntosSalud,this.nivelAtaque,this.fase,this.nivelEnergia,this.descripcion);

  void aumentarAtaque(int cantidad) {
    nivelAtaque += cantidad;
  }

  void aumentarSalud(int cantidad) {
    puntosSalud += cantidad;
  }

  @override
  String toString() {
    return '$nombre (Tipo: $tipo, Nivel: $nivel, Ataque: $nivelAtaque, Salud: $puntosSalud)';
  }
}
