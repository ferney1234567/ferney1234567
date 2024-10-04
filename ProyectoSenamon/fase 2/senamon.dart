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

  Senamon(this.nombre, this.nivel, this.tipo, this.peso, this.puntosSalud,
  this.nivelAtaque, this.fase, this.nivelEnergia, this.descripcion);

  void aumentarAtaque(int cantidad) {
    nivelAtaque += cantidad; 
  }

  void aumentarSalud(int cantidad) {
    puntosSalud += cantidad; 
  }
void atacar(Senamon rival) {
    double dano = calcularDanio(rival);
    rival.puntosSalud -= dano.toInt();
    if (rival.puntosSalud < 0) {
      rival.puntosSalud = 0;
    }
    String tipoAtaque = obtenerTipoAtaque(rival);
    print('$nombre ataca a ${rival.nombre} y le hace $dano puntos de daño ($tipoAtaque).');
    print('${rival.nombre} tiene ahora ${rival.puntosSalud} puntos de salud.');
  }

  double calcularDanio(Senamon objetivo) {
    double danoBase = nivelAtaque.toDouble();
    double multiplicador = multiplicadorDeAtaque(objetivo.tipo);
    return danoBase * multiplicador;
  }
// Función para obtener el multiplicador dependiendo del tipo objetivo
  double multiplicadorDeAtaque(String tipoObjetivo) {
    if (tipo == "Fuego" && tipoObjetivo == "Hierva") return 2.0;
    if (tipo == "Fuego" && tipoObjetivo == "Agua") return 0.5;
    if (tipo == "Fuego" && tipoObjetivo == "Volador") return 1.0;
    if (tipo == "Fuego" && tipoObjetivo == "Electrico") return 1.0;

    if (tipo == "Agua" && tipoObjetivo == "Fuego") return 2.0;
    if (tipo == "Agua" && tipoObjetivo == "Hierva") return 0.5;
    if (tipo == "Agua" && tipoObjetivo == "Volador") return 1.0;
    if (tipo == "Agua" && tipoObjetivo == "Electrico") return 0.5;

    if (tipo == "Hierva" && tipoObjetivo == "Fuego") return 0.5;
    if (tipo == "Hierva" && tipoObjetivo == "Agua") return 2.0;
    if (tipo == "Hierva" && tipoObjetivo == "Volador") return 0.5;
    if (tipo == "Hierva" && tipoObjetivo == "Electrico") return 1.0;

    if (tipo == "Volador" && tipoObjetivo == "Fuego") return 1.0;
    if (tipo == "Volador" && tipoObjetivo == "Agua") return 1.0;
    if (tipo == "Volador" && tipoObjetivo == "Hierva") return 2.0;
    if (tipo == "Volador" && tipoObjetivo == "Electrico") return 0.5;

    if (tipo == "Electrico" && tipoObjetivo == "Fuego") return 1.0;
    if (tipo == "Electrico" && tipoObjetivo == "Agua") return 1.0;
    if (tipo == "Electrico" && tipoObjetivo == "Hierva") return 1.0;
    if (tipo == "Electrico" && tipoObjetivo == "Volador") return 2.0;

    return 1.0; 
  
  }
  String obtenerTipoAtaque(Senamon objetivo) {
    double multiplicador = multiplicadorDeAtaque(objetivo.tipo);
    if (multiplicador == 2.0) return "Super Efectivo";
    if (multiplicador == 1.0) return "Efectivo";
    if (multiplicador == 0.5) return "Poco Efectivo";
    return "Normal";
  }

  @override
  String toString() {
    return '$nombre (Tipo: $tipo, Nivel: $nivel, Ataque: $nivelAtaque, Salud: $puntosSalud)';
  }

}