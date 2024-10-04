
import 'dart:io';
import 'entrenador.dart';
import 'senamon.dart';
import 'dart:math'; 

void main(List<String> args) {

  print("Ingrese la cantidad de entrenadores que participarán en el torneo:");
  int cantidadEntrenadores = int.parse(stdin.readLineSync()!);

  List<Entrenador> entrenadores = [];

  for (int i = 0; i < cantidadEntrenadores; i++) {
    print("Ingrese los datos del entrenador ${i + 1}:");
    print("Ingrese el nombre del entrenador: ");
    String nombre = stdin.readLineSync()!;
    print("Ingrese el email del entrenador: ");
    String email = stdin.readLineSync()!;
    print("Ingrese la Fecha de nacimiento (aaaa-mm-dd): ");
    DateTime fechaNacimiento = DateTime.parse(stdin.readLineSync()!);
    int nivelExperiencia = 0;
    int batallasGanadas = 0;

    Entrenador entrenador = Entrenador(nombre, email, fechaNacimiento, nivelExperiencia, batallasGanadas);
    entrenadores.add(entrenador);
  }

  mostrarMenu(entrenadores);
}
void mostrarMenu(List<Entrenador> entrenadores) {
  while (true) {
    print("""
 -----------Menú Principal:----------
        1. Mostrar información de los entrenadores
        2. Agregar Senamon a un entrenador
        3. Reemplazar Senamon de un entrenador
        4. Entrenar Senamones
        5. Iniciar Batalla
        6. Mostrar entrenador con más victorias
        7. Salir
--------------------------------------
""");
    print("Elige una opción: ");
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        for (var entrenador in entrenadores) {
          entrenador.mostrarInfo();
        }
        break;
      case '2':
        agregarSenamonMenu(entrenadores);
        break;
      case '3':
        reemplazarSenamon(entrenadores);
        break;
      case '4':
        entrenarSenamon(entrenadores);
        break;
      case '5':
        iniciarBatalla(entrenadores);
        break;
      case '6':
        mostrarJugadoresConMasVictorias(entrenadores);
        break;
      case '7':
        print("Saliendo...");
        return;
      default:
        print("Opción no válida. Inténtelo de nuevo.");
    }
  }
}
void agregarSenamonMenu(List<Entrenador> entrenadores) {
  List<Senamon> senamones = [
    Senamon("Among-us", 1, "Hierva", 12.5, 190, 50, "Arburt-sus", 160, "Un Senamon travieso que se camufla entre plantas"),
    Senamon("Arbustin", 1, "Hierva", 20.55, 150, 170, "Arbolin", 10, "Con raíces profundas, este Senamon es imbatible en su terreno"),
    Senamon("Basukomon", 1, "Hierva", 50.8, 200, 90, "Krikomon", 80, "Fuerte como un tronco, protege a los suyos con fuerza"),
    Senamon("Ralts", 1, "Hierva", 10.5, 200, 10, "Gardevoir", 50, "Pequeño pero ágil, usa sus poderes mentales para controlar la naturaleza"),
    Senamon("Kyubimon", 1, "Hierva", 9.5, 260, 200, "Renamon", 200, "Un zorro místico con control sobre la vegetación"),
    Senamon("Swablu", 1, "Fuego", 65.9, 180, 70, "Swinch", 150, "Un pájaro que arde en llamas, siempre volando alto"),
    Senamon("Blitzle", 1, "Fuego", 72.4, 160, 90, "Onisiro", 140, "Corriendo a gran velocidad, deja un rastro de fuego"),
    Senamon("Basculin", 1, "Fuego", 54.2, 170, 80, "Masculine", 30, "Con una coraza ardiente, es difícil de derribar"),
    Senamon("Bruxish", 1, "Fuego", 59.3, 150, 88, "Bruck", 10, "Un pez con un toque explosivo, sus ataques son devastadores"),
    Senamon("Hydreigon", 1, "Fuego", 70.6, 160, 80, "Hydrigosty", 70, "Un dragón infernal, domina con su fuego incontrolable"),
    Senamon("Levia", 1, "Agua", 70.9, 190, 89, "Leviatank", 100, "Colosal como un océano, sus olas arrasan todo a su paso"),
    Senamon("Conger", 1, "Agua", 70.5, 300, 99, "Emperor Crab", 150, "Un cangrejo gigante, rey de los mares"),
    Senamon("Whater", 1, "Agua", 20.5, 190, 77, "Whaterpool", 40, "Siempre en movimiento, es una corriente constante en la batalla"),
    Senamon("Hiputus", 1, "Agua", 140.6, 200, 77, "Moto Moto", 60, "Grande y pesado, pero rápido en el agua"),
    Senamon("Hak", 1, "Agua", 36.8, 50, 88, "Hakari", 170, "Un guerrero de las profundidades, silencioso pero letal"),
    Senamon("Altaria", 1, "Volador", 25.5, 150, 90, "Altrick", 50, "Majestuoso, surca los cielos en busca de aventura"),
    Senamon("Salamence", 1, "Volador", 37.2, 300, 940, "Sacobich", 40, "Un dragón alado, imparable cuando está en vuelo"),
    Senamon("Pelipper", 1, "Volador", 34.5, 150, 70, "Pelpir", 60, "Con su gran pico, transporta agua y lanza ataques aéreos"),
    Senamon("Fenix", 1, "Volador", 22.7, 200, 80, "Figrese", 10, "Un ave de fuego que renace de sus cenizas"),
    Senamon("Taillow", 1, "Volador", 20.3, 150, 60, "Toruko", 70, "Rápido y ágil, siempre listo para una batalla aérea"),
    Senamon("Rotom", 1, "Electrico", 0.3, 190, 90, "Lava", 50, "Un espíritu eléctrico que posee objetos y los manipula"),
    Senamon("Mareep", 1, "Electrico", 7.8, 160, 80, "Mañaco", 40, "Su lana está cargada de energía, listo para soltar chispas"),
    Senamon("Elekid", 1, "Electrico", 12.8, 170, 90, "Karizo", 30, "Un pequeño pero poderoso generador de energía"),
    Senamon("Zapdos", 1, "Electrico", 52.6, 250, 80, "Zamer", 50, "Un dios del trueno, domina los cielos con su poder"),
    Senamon("Electivire", 1, "Electrico", 138.6, 200, 70, "Elekos", 70, "Una máquina de electricidad, todo a su alrededor queda paralizado")
  ];
  // Mostrar lista de entrenadores
  print("Lista de entrenadores:");
  for (int i = 0; i < entrenadores.length; i++) {
    print('${i + 1}. ${entrenadores[i].nombre}');
  }
  // Selección del entrenador
  print("¿A qué entrenador quieres agregar los Senamones? debes de elegir un número:");
  int seleccionEntrenador = int.parse(stdin.readLineSync()!) - 1;
  
  if (seleccionEntrenador >= 0 && seleccionEntrenador < entrenadores.length) {
    Entrenador entrenadorSeleccionado = entrenadores[seleccionEntrenador];
    print("Has seleccionado a ${entrenadorSeleccionado.nombre}");

    List<Senamon> senamonesSeleccionados = [];

    // Seleccionar 5 Senamones
    for (int i = 0; i < 5; i++) {
      print("Selecciona el Senamon ${i + 1} para ${entrenadorSeleccionado.nombre}");
      
      // Mostrar la lista de Senamones
      for (int j = 0; j < senamones.length; j++) {
        print('${j + 1}. ${senamones[j].nombre} - Tipo: ${senamones[j].tipo}');
      }
      // mostrar información de cada Senamon
      print("Lista de Senamones para agregar:");
      for (int k = 0; k < senamones.length; k++) {
        print("""--------------------------------------------------------------------------------------------------------------------
${k + 1}. Nombre: ${senamones[k].nombre}                        Tipo: ${senamones[k].tipo}
          Nivel: ${senamones[k].nivel}                                    Peso: ${senamones[k].peso}
          Puntos de Salud: ${senamones[k].puntosSalud}                    Poder de Ataque: ${senamones[k].nivelAtaque}
          Evolución: ${senamones[k].fase}                                 Energía: ${senamones[k].nivelEnergia}
          Descripción: ${senamones[k].descripcion}
----------------------------------------------------------------------------------------------------------------------------------""");
      }
      // Selección del Senamon
      int seleccionSenamon = int.parse(stdin.readLineSync()!) - 1;

      if (seleccionSenamon >= 0 && seleccionSenamon < senamones.length) {
        Senamon senamonElegido = senamones[seleccionSenamon];
        senamonesSeleccionados.add(senamonElegido);
        
        // Mensaje de confirmación al agregar al Senamon
        print("Has agregado a ${senamonElegido.nombre} a ${entrenadorSeleccionado.nombre}.");
      } else {
        print("Selección inválida, intenta de nuevo.");
        i--; 
      }
    }
    // Agregar los Senamones seleccionados al entrenador
    entrenadorSeleccionado.senamones.addAll(senamonesSeleccionados);
    print("Senamones agregados con éxito a ${entrenadorSeleccionado.nombre}");
  } else {
    print("Selección de entrenador inválida.");
  }
}
//-----------------------------------------------------------------------------------------------------------------------------
void reemplazarSenamon(List<Entrenador> entrenadores) {
  List<Senamon> disponibles = [
    Senamon("Among-us", 1, "Hierva", 12.5, 190, 50, "Arburt-sus", 160, "Un Senamon travieso que se camufla entre plantas"),
    Senamon("Arbustin", 1, "Hierva", 20.55, 150, 170, "Arbolin", 10, "Con raíces profundas, este Senamon es imbatible en su terreno"),
    Senamon("Basukomon", 1, "Hierva", 50.8, 200, 90, "Krikomon", 80, "Fuerte como un tronco, protege a los suyos con fuerza"),
    Senamon("Ralts", 1, "Hierva", 10.5, 200, 10, "Gardevoir", 50, "Pequeño pero ágil, usa sus poderes mentales para controlar la naturaleza"),
    Senamon("Kyubimon", 1, "Hierva", 9.5, 260, 200, "Renamon", 200, "Un zorro místico con control sobre la vegetación"),
    Senamon("Swablu", 1, "Fuego", 65.9, 180, 70, "Swinch", 150, "Un pájaro que arde en llamas, siempre volando alto"),
    Senamon("Blitzle", 1, "Fuego", 72.4, 160, 90, "Onisiro", 140, "Corriendo a gran velocidad, deja un rastro de fuego"),
    Senamon("Basculin", 1, "Fuego", 54.2, 170, 80, "Masculine", 30, "Con una coraza ardiente, es difícil de derribar"),
    Senamon("Bruxish", 1, "Fuego", 59.3, 150, 88, "Bruck", 10, "Un pez con un toque explosivo, sus ataques son devastadores"),
    Senamon("Hydreigon", 1, "Fuego", 70.6, 160, 80, "Hydrigosty", 70, "Un dragón infernal, domina con su fuego incontrolable"),
    Senamon("Levia", 1, "Agua", 70.9, 190, 89, "Leviatank", 100, "Colosal como un océano, sus olas arrasan todo a su paso"),
    Senamon("Conger", 1, "Agua", 70.5, 300, 99, "Emperor Crab", 150, "Un cangrejo gigante, rey de los mares"),
    Senamon("Whater", 1, "Agua", 20.5, 190, 77, "Whaterpool", 40, "Siempre en movimiento, es una corriente constante en la batalla"),
    Senamon("Hiputus", 1, "Agua", 140.6, 200, 77, "Moto Moto", 60, "Grande y pesado, pero rápido en el agua"),
    Senamon("Hak", 1, "Agua", 36.8, 50, 88, "Hakari", 170, "Un guerrero de las profundidades, silencioso pero letal"),
    Senamon("Altaria", 1, "Volador", 25.5, 150, 90, "Altrick", 50, "Majestuoso, surca los cielos en busca de aventura"),
    Senamon("Salamence", 1, "Volador", 37.2, 300, 940, "Sacobich", 40, "Un dragón alado, imparable cuando está en vuelo"),
    Senamon("Pelipper", 1, "Volador", 34.5, 150, 70, "Pelpir", 60, "Con su gran pico, transporta agua y lanza ataques aéreos"),
    Senamon("Fenix", 1, "Volador", 22.7, 200, 80, "Figrese", 10, "Un ave de fuego que renace de sus cenizas"),
    Senamon("Taillow", 1, "Volador", 20.3, 150, 60, "Toruko", 70, "Rápido y ágil, siempre listo para una batalla aérea"),
    Senamon("Rotom", 1, "Electrico", 0.3, 190, 90, "Lava", 50, "Un espíritu eléctrico que posee objetos y los manipula"),
    Senamon("Mareep", 1, "Electrico", 7.8, 160, 80, "Mañaco", 40, "Su lana está cargada de energía, listo para soltar chispas"),
    Senamon("Elekid", 1, "Electrico", 12.8, 170, 90, "Karizo", 30, "Un pequeño pero poderoso generador de energía"),
    Senamon("Zapdos", 1, "Electrico", 52.6, 250, 80, "Zamer", 50, "Un dios del trueno, domina los cielos con su poder"),
    Senamon("Electivire", 1, "Electrico", 138.6, 200, 70, "Elekos", 70, "Una máquina de electricidad, todo a su alrededor queda paralizado")
  ];
  // Mostrar lista de entrenadores
  print("Lista de entrenadores:");
  for (var i = 0; i < entrenadores.length; i++) {
    print('${i + 1}. ${entrenadores[i].nombre}');
  }

  // Selección del entrenador
  int seleccionEntrenador = _seleccionarEntrenador(entrenadores);

  if (seleccionEntrenador >= 0) {
    Entrenador entrenadorSeleccionado = entrenadores[seleccionEntrenador];
    print("Has seleccionado a ${entrenadorSeleccionado.nombre}");

    // Mostrar los Senamones actuales del entrenador
    _mostrarSenamonesEntrenador(entrenadorSeleccionado);

    // Selección del Senamon a reemplazar
    int seleccionSenamon = _seleccionarSenamon(entrenadorSeleccionado);

    if (seleccionSenamon >= 0) {
      // Mostrar la información del Senamon a reemplazar
      Senamon senamonAReemplazar = entrenadorSeleccionado.senamones[seleccionSenamon];
      print("Has seleccionado reemplazar a: ${senamonAReemplazar.nombre}" );

      // Mostrar la lista de Senamones disponibles para reemplazar
      print('Senamones disponibles para reemplazo:');
      for (var i = 0; i < disponibles.length; i++) {
        print("""
        --------------------------------------------------------------------------------------------------------------------
        ${i + 1}. Nombre: ${disponibles[i].nombre}                        Tipo: ${disponibles[i].tipo}
        Nivel: ${disponibles[i].nivel}                                          Peso: ${disponibles[i].peso}
        Puntos de Salud: ${disponibles[i].puntosSalud}                          Poder de Ataque: ${disponibles[i].nivelAtaque}
        Evolución: ${disponibles[i].fase}                                       Energía: ${disponibles[i].nivelEnergia}
        Descripción: ${disponibles[i].descripcion}
        --------------------------------------------------------------------------------------------------------------------""");
      }
      // Selección del nuevo Senamon
      int seleccionNuevoSenamon = _seleccionarNuevoSenamon(disponibles);

      if (seleccionNuevoSenamon >= 0) {
        Senamon nuevoSenamon = disponibles[seleccionNuevoSenamon];
        entrenadorSeleccionado.senamones[seleccionSenamon] = nuevoSenamon;

        print("Has reemplazado a ${senamonAReemplazar.nombre} por ${nuevoSenamon.nombre}.");
      } else {
        print("Selección inválida de nuevo Senamon.");
      }
    } else {
      print("Selección inválida de Senamon a reemplazar.");
    }
  } else {
    print("Selección inválida de entrenador.");
  }
}
// Función para seleccionar entrenador
int _seleccionarEntrenador(List<Entrenador> entrenadores) {
  print("¿Qué entrenador quieres elegir para reemplazar un Senamon? Elige el número:");
  int seleccion = int.parse(stdin.readLineSync()!) - 1;
  return (seleccion >= 0 && seleccion < entrenadores.length) ? seleccion : -1;
}

// Función para mostrar Senamones del entrenador
void _mostrarSenamonesEntrenador(Entrenador entrenador) {
  print("Senamones actuales de ${entrenador.nombre}:");
  for (var i = 0; i < entrenador.senamones.length; i++) {
    print('${i + 1}. ${entrenador.senamones[i].nombre} - TIPO =    ${entrenador.senamones[i].tipo} - ATAQUE=   ${entrenador.senamones[i].nivelAtaque} - SALUD =  ${entrenador.senamones[i].puntosSalud}');
  }
}

// Función para seleccionar Senamon a reemplazar
int _seleccionarSenamon(Entrenador entrenador) {
  print("¿Qué Senamon quieres reemplazar? Elige el número:");
  int seleccion = int.parse(stdin.readLineSync()!) - 1;
  return (seleccion >= 0 && seleccion < entrenador.senamones.length) ? seleccion : -1;
}

// Función para seleccionar nuevo Senamon
int _seleccionarNuevoSenamon(List<Senamon> disponibles) {
  print("¿Qué nuevo Senamon quieres elegir? Elige el número:");
  int seleccion = int.parse(stdin.readLineSync()!) - 1;
  return (seleccion >= 0 && seleccion < disponibles.length) ? seleccion : -1;
}

//--------------------------------------------------------------------------------------------------------------------------------------
void entrenarSenamon(List<Entrenador> entrenadores) {
  print(('¿Qué entrenador deseas entrenar?'));
  for (int i = 0; i < entrenadores.length; i++) {
    print(('${i + 1}: ${entrenadores[i].nombre}'));
  }
  stdout.write(("Ingresa el número del entrenador: "));
  String? input = stdin.readLineSync();
  int? seleccion = int.tryParse(input ?? '');

  if (seleccion == null || seleccion < 1 || seleccion > entrenadores.length) {
    print("Selección de entrenador no válida.");
    return;
  }

  Entrenador entrenadorSeleccionado = entrenadores[seleccion - 1];
  entrenadorSeleccionado.entrenarSenamones();
}

//----------------------------------------------------------------------------------------------------------------

void iniciarBatalla(List<Entrenador> entrenadores) {
  print("¡La batalla comienza entre los entrenadores!");
  
  print("Entrenadores disponibles:");
  for (int i = 0; i < entrenadores.length; i++) {
    print('${i + 1}. ${entrenadores[i].nombre}');
  }

  print("Selecciona el primer entrenador (ingresa el número):");
  int seleccion1 = int.parse(stdin.readLineSync()!);
  Entrenador entrenador1 = entrenadores[seleccion1 - 1];

  print("Selecciona el segundo entrenador (ingresa el número):");
  int seleccion2 = int.parse(stdin.readLineSync()!);
  Entrenador entrenador2 = entrenadores[seleccion2 - 1];

  // Lanzar moneda para decidir quién inicia
  Entrenador primerEntrenador = lanzarMoneda() ? entrenador1 : entrenador2;
  Entrenador segundoEntrenador = primerEntrenador == entrenador1 ? entrenador2 : entrenador1;

  print("Lanzamiento de moneda... ¡${primerEntrenador.nombre} comienza la batalla!");

  // Inicializar mapa de victorias
  Map<String, int> victorias = {entrenador1.nombre: 0, entrenador2.nombre: 0};

  // Ciclo de batalla hasta que un entrenador gane
  while (true) {
    if (!tieneSenamonesDisponibles(primerEntrenador)) {
      print("${primerEntrenador.nombre} no tiene más Senamones disponibles. ${segundoEntrenador.nombre} gana la batalla.");
      victorias[segundoEntrenador.nombre] = victorias[segundoEntrenador.nombre]! + 1;
      break;
    }

    if (!tieneSenamonesDisponibles(segundoEntrenador)) {
      print("${segundoEntrenador.nombre} no tiene más Senamones disponibles. ${primerEntrenador.nombre} gana la batalla.");
      victorias[primerEntrenador.nombre] = victorias[primerEntrenador.nombre]! + 1;
      break;
    }

    // Selección de Senamones para la batalla
    Senamon senamon1 = seleccionarSenamon(primerEntrenador);
    Senamon senamon2 = seleccionarSenamon(segundoEntrenador);

    // Batalla entre los Senamones
    while (senamon1.puntosSalud > 0 && senamon2.puntosSalud > 0) {
      senamon1.atacar(senamon2);
      if (senamon2.puntosSalud > 0) {
        senamon2.atacar(senamon1);
      }
    }
    // Determinar ganador de la ronda
    if (senamon1.puntosSalud > 0) {
      print("${primerEntrenador.nombre} gana esta ronda con su Senamon ${senamon1.nombre}.");
      victorias[primerEntrenador.nombre] = victorias[primerEntrenador.nombre]! + 1;
    } else {
      print("${segundoEntrenador.nombre} gana esta ronda con su Senamon ${senamon2.nombre}.");
      victorias[segundoEntrenador.nombre] = victorias[segundoEntrenador.nombre]! + 1;
    }

    // Mostrar estado de la batalla
    print("Estado de la batalla:");
    print("${primerEntrenador.nombre}: ${victorias[primerEntrenador.nombre]} victorias");
    print("${segundoEntrenador.nombre}: ${victorias[segundoEntrenador.nombre]} victorias");

    // Determinar si alguien ha ganado 3 veces
    if (victorias[primerEntrenador.nombre] == 3 || victorias[segundoEntrenador.nombre] == 3) {
      Entrenador ganador = victorias[primerEntrenador.nombre] == 3 ? primerEntrenador : segundoEntrenador;
      print("${ganador.nombre} ha ganado la batalla completa.");
      ganador.nivelExperiencia += 200;
      ganador.batallasGanadas++;
      break;
    }

    // Intercambiar roles para la siguiente ronda
    Entrenador temp = primerEntrenador;
    primerEntrenador = segundoEntrenador;
    segundoEntrenador = temp;
  }
}
// Función para lanzar una moneda
bool lanzarMoneda() {
  return Random().nextBool(); // Generar aleatoriamente true o false
}

// Función para verificar si el entrenador tiene Senamones disponibles
bool tieneSenamonesDisponibles(Entrenador entrenador) {
  for (Senamon senamon in entrenador.senamones) {
    if (senamon.puntosSalud > 0) {
      return true;
    }
  }
  return false;
}
// Función para seleccionar un Senamon
Senamon seleccionarSenamon(Entrenador entrenador) {
  print("Entrenador ${entrenador.nombre}, selecciona un Senamon para la batalla:");
  for (int i = 0; i < entrenador.senamones.length; i++) {
    print('${i + 1}. ${entrenador.senamones[i].nombre} -- SALUD: ${entrenador.senamones[i].puntosSalud} - ATAQUE: ${entrenador.senamones[i].nivelAtaque} - TIPO: ${entrenador.senamones[i].tipo}');
  }
  int seleccion = int.parse(stdin.readLineSync()!);
  Senamon senamonSeleccionado = entrenador.senamones[seleccion - 1];

  if (senamonSeleccionado.puntosSalud > 0) {
    print("Entrenador ${entrenador.nombre} ha seleccionado a ${senamonSeleccionado.nombre}.");
    return senamonSeleccionado;
  } else {
    print("${senamonSeleccionado.nombre} no tiene suficientes puntos de salud. Selecciona otro Senamon.");
    return seleccionarSenamon(entrenador);
  }
}
//--------------------------------------------------------------------------------------------------------------------------------
 void mostrarJugadoresConMasVictorias(List<Entrenador> entrenadores) {
  print("Entrenadores con más victorias:");
  // Encontrar el entrenador con más victorias
  Entrenador entrenadorConMasVictorias = entrenadores[0];

  for (var entrenador in entrenadores) {
    if (entrenador.batallasGanadas > entrenadorConMasVictorias.batallasGanadas) {
      entrenadorConMasVictorias = entrenador;
    }
  }

  print("${entrenadorConMasVictorias.nombre} tiene más victorias con ${entrenadorConMasVictorias.batallasGanadas} victorias.");

  print("Victorias de todos los entrenadores:");
  for (var entrenador in entrenadores) {
    print("${entrenador.nombre}: ${entrenador.batallasGanadas} victorias.");
  }
}

 
