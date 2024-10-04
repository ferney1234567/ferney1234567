import 'dart:io';
import 'entrenador.dart';
import 'senamon.dart';

void main(List<String> args) {
  List<Entrenador> entrenadores = [];
  
  for (int i = 0; i < 2; i++) {
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
  mostrarMenu(entrenadores[0], entrenadores[1]);
}

void mostrarMenu(Entrenador entrenador1, Entrenador entrenador2) {
  while (true) {
    print(("""---------------------------------------------------------------------------------
Menú Principal:
1. Mostrar información del entrenador
2. Agregar Senamon
3. Reemplazar Senamon
4. Entrenar Senamones
5. Iniciar Batalla
6. Mostrar jugador con más victorias
7. Salir 
------------------------------------------------------------------------------------------"""));
    print("Tienes que elegir una opción: ");
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        entrenador1.mostrarInfo();
        entrenador2.mostrarInfo();
        break;
      case '2':
        agregarSenamonMenu(entrenador1, entrenador2);
        break;
      case '3':
        reemplazarSenamon(entrenador1, entrenador2);
        break;
      case '4':
        entrenarSenamon(entrenador1, entrenador2);
        break;
      case '5':
        iniciarBatalla(entrenador1, entrenador2);
        break;
      case '6':
        mostrarJugadorConMasVictorias(entrenador1, entrenador2);
        break;
      case '7':
        print("Saliendo..");
        return;
      default:
        print("Opción no válida. Inténtelo de nuevo.");
    }
  }
}

//-------------------------------------------------------------------------------------------------
void agregarSenamonMenu(Entrenador entrenador1, Entrenador entrenador2) {
  List<Senamon> senamones = [
Senamon("Among-us", 1, "Hierva", 12.5, 100, 100, "Arburt-sus", 50, "Un Senamon travieso que se camufla entre plantas"),
Senamon("Arbustin", 1, "Hierva", 20.55, 150, 80, "Arbolin", 40, "Con raíces profundas, este Senamon es imbatible en su terreno"),
Senamon("Basukomon", 1, "Hierva", 50.8, 200, 50, "Krikomon", 30, "Fuerte como un tronco, protege a los suyos con fuerza"),
Senamon("Ralts", 1, "Hierva", 10.5, 70, 150, "Gardevoir", 70, "Pequeño pero ágil, usa sus poderes mentales para controlar la naturaleza"),
Senamon("Kyubimon", 1, "Hierva", 9.5, 60, 170, "Renamon", 40, "Un zorro místico con control sobre la vegetación"),
Senamon("Swablu", 1, "Fuego", 65.9, 100, 100, "Swinch", 50, "Un pájaro que arde en llamas, siempre volando alto"),
Senamon("Blitzle", 1, "Fuego", 72.4, 100, 100, "Onisiro", 40, "Corriendo a gran velocidad, deja un rastro de fuego"),
Senamon("Basculin", 1, "Fuego", 54.2, 100, 100, "Masculine", 30, "Con una coraza ardiente, es difícil de derribar"),
Senamon("Bruxish", 1, "Fuego", 59.3, 100, 100, "Bruck", 50, "Un pez con un toque explosivo, sus ataques son devastadores"),
Senamon("Hydreigon", 1, "Fuego", 70.6, 100, 100, "Hydrigosty", 70, "Un dragón infernal, domina con su fuego incontrolable"),
Senamon("Levia", 1, "Agua", 70.9, 50, 300, "Leviatank", 10, "Colosal como un océano, sus olas arrasan todo a su paso"),
Senamon("Conger", 1, "Agua", 70.5, 300, 30, "Emperor Crab", 50, "Un cangrejo gigante, rey de los mares"),
Senamon("Whater", 1, "Agua", 20.5, 100, 60, "Whaterpool", 40, "Siempre en movimiento, es una corriente constante en la batalla"),
Senamon("Hiputus", 1, "Agua", 140.6, 200, 80, "Moto Moto", 60, "Grande y pesado, pero rápido en el agua"),
Senamon("Hak", 1, "Agua", 36.8, 50, 120, "Hakari", 70, "Un guerrero de las profundidades, silencioso pero letal"),
Senamon("Altaria", 1, "Volador", 25.5, 100, 100, "Altrick", 50, "Majestuoso, surca los cielos en busca de aventura"),
Senamon("Salamence", 1, "Volador", 37.2, 100, 100, "Sacobich", 40, "Un dragón alado, imparable cuando está en vuelo"),
Senamon("Pelipper", 1, "Volador", 34.5, 100, 100, "Pelpir", 60, "Con su gran pico, transporta agua y lanza ataques aéreos"),
Senamon("Fenix", 1, "Volador", 22.7, 100, 100, "Figrese", 10, "Un ave de fuego que renace de sus cenizas"),
Senamon("Taillow", 1, "Volador", 20.3, 100, 100, "Toruko", 70, "Rápido y ágil, siempre listo para una batalla aérea"),
Senamon("Rotom", 1, "Electrico", 0.3, 100, 100, "Lava", 50, "Un espíritu eléctrico que posee objetos y los manipula"),
Senamon("Mareep", 1, "Electrico", 7.8, 100, 100, "Mañaco", 40, "Su lana está cargada de energía, listo para soltar chispas"),
Senamon("Elekid", 1, "Electrico", 12.8, 100, 100, "Karizo", 30, "Un pequeño pero poderoso generador de energía"),
Senamon("Zapdos", 1, "Electrico", 52.6, 100, 100, "Zamer", 50, "Un dios del trueno, domina los cielos con su poder"),
Senamon("Electivire", 1, "Electrico", 138.6, 100, 100, "Elekos", 70, "Una máquina de electricidad, todo a su alrededor queda paralizado")
  ];
  print("Lista de Senamones para agregar:");
  for (int i = 0; i < senamones.length; i++) {
    print("""--------------------------------------------------------------------------------------------------------------------
${i + 1}. Nombre: ${senamones[i].nombre}                        Tipo: ${senamones[i].tipo}
          Nivel: ${senamones[i].nivel}                                    Peso: ${senamones[i].peso}
          Puntos de Salud: ${senamones[i].puntosSalud}                    Poder de Ataque: ${senamones[i].nivelAtaque}
          Evolución: ${senamones[i].fase}                                 Energía: ${senamones[i].nivelEnergia}
          Descripcion ${senamones[i].descripcion}
----------------------------------------------------------------------------------------------------------------------------------""");
  }
  print("¿A qué entrenador quieres agregar los senamones?");
  print("1. ${entrenador1.nombre}");
  print("2. ${entrenador2.nombre}");
  int? seleccionEntrenador = int.tryParse(stdin.readLineSync()!);

  Entrenador entrenadorSeleccionado;
  if (seleccionEntrenador == 1) {
    entrenadorSeleccionado = entrenador1;
  } else if (seleccionEntrenador == 2) {
    entrenadorSeleccionado = entrenador2;
  } else {
    print("Selección inválida. ");
    entrenadorSeleccionado = entrenador1; 
  }
  // Seleccionar Senamones para el entrenador seleccionado
  List<Senamon> senamonesSeleccionados = seleccionarSenamones(senamones, entrenadorSeleccionado);

  // Agregar Senamones al entrenador seleccionado
  agregarSenamonesEntrenadores(entrenadorSeleccionado, senamonesSeleccionados);
}
  List<Senamon> seleccionarSenamones(List<Senamon> senamones, Entrenador entrenador) {
  List<Senamon> seleccionados = [];
  print("Selecciona 5 Senamones para ${entrenador.nombre}:");
  print("-----------------------------------------------------");
  for (int i = 0; i < 5; i++) {
    while (true) {
      print("Selecciona el número del Senamon ${i + 1}: ");
      print("-----------------------------------------------------");
      int? seleccion = int.tryParse(stdin.readLineSync()!);

      if (seleccion == null ||
          seleccion < 1 ||
          seleccion > senamones.length ||
          seleccionados.contains(senamones[seleccion - 1])) {
        print("Selección inválida. Intenta nuevamente.");
      } else {
        seleccionados.add(senamones[seleccion - 1]);
        break;
      }
    }
  }
  return seleccionados;
}
void agregarSenamonesEntrenadores(Entrenador entrenador, List<Senamon> senamonesSeleccionados) {
  for (Senamon senamonSeleccionado in senamonesSeleccionados) {
    entrenador.agregarSenamon(senamonSeleccionado);
  }
}

//----------------------------------------------------------------------------------------------------------------------------
void reemplazarSenamon(Entrenador entrenador1, Entrenador entrenador2) {
  print('¿A qué entrenador deseas reemplazar un Senamon?');
  print('1: ${entrenador1.nombre}');
  print('2: ${entrenador2.nombre}');
  print("Ingresa el número del entrenador: ");
  String? seleccionarEntrenador = stdin.readLineSync();
  int? seleccionEntrenador = int.tryParse(seleccionarEntrenador ?? '');

  Entrenador? entrenadorSeleccionado;
  if (seleccionEntrenador == 1) {
    entrenadorSeleccionado = entrenador1;
  } else if (seleccionEntrenador == 2) {
    entrenadorSeleccionado = entrenador2;
  } else {
    print("Selección de entrenador no válida.");
    return;
  }
  if (entrenadorSeleccionado.senamones.isEmpty) {
    print("${entrenadorSeleccionado.nombre} no tiene Senamones para reemplazar.");
    return;
  }
  print("Senamones de ${entrenadorSeleccionado.nombre}:");
  for (int i = 0; i < entrenadorSeleccionado.senamones.length; i++) {
    print("${i + 1}. ${entrenadorSeleccionado.senamones[i].nombre} Salud----- ${entrenadorSeleccionado.senamones[i].puntosSalud} Ataque--- ${entrenadorSeleccionado.senamones[i].nivelAtaque}");
  }

  print("Selecciona el número del Senamon que deseas reemplazar: ");
  String? seleccionarPosicion = stdin.readLineSync();
  int? posicion = int.tryParse(seleccionarPosicion ?? '');

  if (posicion == null ||
      posicion < 1 ||
      posicion > entrenadorSeleccionado.senamones.length) {
    print("Posición inválida.");
    return;
  }

  List<Senamon> disponibles = [
Senamon("Among-us", 1, "Hierva", 12.5, 100, 100, "Arburt-sus", 50, "Un Senamon travieso que se camufla entre plantas"),
Senamon("Arbustin", 1, "Hierva", 20.55, 150, 80, "Arbolin", 40, "Con raíces profundas, este Senamon es imbatible en su terreno"),
Senamon("Basukomon", 1, "Hierva", 50.8, 200, 50, "Krikomon", 30, "Fuerte como un tronco, protege a los suyos con fuerza"),
Senamon("Ralts", 1, "Hierva", 10.5, 70, 150, "Gardevoir", 70, "Pequeño pero ágil, usa sus poderes mentales para controlar la naturaleza"),
Senamon("Kyubimon", 1, "Hierva", 9.5, 60, 170, "Renamon", 40, "Un zorro místico con control sobre la vegetación"),
Senamon("Swablu", 1, "Fuego", 65.9, 100, 100, "Swinch", 50, "Un pájaro que arde en llamas, siempre volando alto"),
Senamon("Blitzle", 1, "Fuego", 72.4, 100, 100, "Onisiro", 40, "Corriendo a gran velocidad, deja un rastro de fuego"),
Senamon("Basculin", 1, "Fuego", 54.2, 100, 100, "Masculine", 30, "Con una coraza ardiente, es difícil de derribar"),
Senamon("Bruxish", 1, "Fuego", 59.3, 100, 100, "Bruck", 50, "Un pez con un toque explosivo, sus ataques son devastadores"),
Senamon("Hydreigon", 1, "Fuego", 70.6, 100, 100, "Hydrigosty", 70, "Un dragón infernal, domina con su fuego incontrolable"),
Senamon("Levia", 1, "Agua", 70.9, 50, 300, "Leviatank", 10, "Colosal como un océano, sus olas arrasan todo a su paso"),
Senamon("Conger", 1, "Agua", 70.5, 300, 30, "Emperor Crab", 50, "Un cangrejo gigante, rey de los mares"),
Senamon("Whater", 1, "Agua", 20.5, 100, 60, "Whaterpool", 40, "Siempre en movimiento, es una corriente constante en la batalla"),
Senamon("Hiputus", 1, "Agua", 140.6, 200, 80, "Moto Moto", 60, "Grande y pesado, pero rápido en el agua"),
Senamon("Hak", 1, "Agua", 36.8, 50, 120, "Hakari", 70, "Un guerrero de las profundidades, silencioso pero letal"),
Senamon("Altaria", 1, "Volador", 25.5, 100, 100, "Altrick", 50, "Majestuoso, surca los cielos en busca de aventura"),
Senamon("Salamence", 1, "Volador", 37.2, 100, 100, "Sacobich", 40, "Un dragón alado, imparable cuando está en vuelo"),
Senamon("Pelipper", 1, "Volador", 34.5, 100, 100, "Pelpir", 60, "Con su gran pico, transporta agua y lanza ataques aéreos"),
Senamon("Fenix", 1, "Volador", 22.7, 100, 100, "Figrese", 10, "Un ave de fuego que renace de sus cenizas"),
Senamon("Taillow", 1, "Volador", 20.3, 100, 100, "Toruko", 70, "Rápido y ágil, siempre listo para una batalla aérea"),
Senamon("Rotom", 1, "Electrico", 0.3, 100, 100, "Lava", 50, "Un espíritu eléctrico que posee objetos y los manipula"),
Senamon("Mareep", 1, "Electrico", 7.8, 100, 100, "Mañaco", 40, "Su lana está cargada de energía, listo para soltar chispas"),
Senamon("Elekid", 1, "Electrico", 12.8, 100, 100, "Karizo", 30, "Un pequeño pero poderoso generador de energía"),
Senamon("Zapdos", 1, "Electrico", 52.6, 100, 100, "Zamer", 50, "Un dios del trueno, domina los cielos con su poder"),
Senamon("Electivire", 1, "Electrico", 138.6, 100, 100, "Elekos", 70, "Una máquina de electricidad, todo a su alrededor queda paralizado")
  ];
   print("Remplazar senamones:");
  for (int i = 0; i < disponibles.length; i++) {
    print(""" --------------------------------------------------------------------------------------------------------------------")}
${i + 1}. Nombre: ${disponibles[i].nombre}                        Tipo: ${disponibles[i].tipo}
Nivel: ${disponibles[i].nivel}                                          Peso: ${disponibles[i].peso}
Puntos de Salud: ${disponibles[i].puntosSalud}                          Poder de Ataque: ${disponibles[i].nivelAtaque}
Evolución: ${disponibles[i].fase}                                       Energía: ${disponibles[i].nivelEnergia}
Descripcion ${disponibles[i].descripcion}
" --------------------------------------------------------------------------------------------------------------------""");
  }
  // Filtrar los Senamones que no están en los equipos de los entrenadores
  List<Senamon> senamenesFiltrdos = disponibles.where((senamonDisponible) {
    return !entrenador1.senamones.contains(senamonDisponible) && !entrenador2.senamones.contains(senamonDisponible);}).toList();
  
  if (senamenesFiltrdos.isEmpty) {
    print("No hay Senamones disponibles para reemplazar.");
    return;
  }

  print("Selecciona el número del nuevo Senamon: ");
  String? eleccionNuevoSenamon = stdin.readLineSync();
  int? seleccionNuevo = int.tryParse(eleccionNuevoSenamon ?? '');

  if (seleccionNuevo == null ||
      seleccionNuevo < 1 ||
      seleccionNuevo > senamenesFiltrdos.length) {
    print("Selección inválida.");
    return;
  }
  Senamon nuevoSenamon = senamenesFiltrdos[seleccionNuevo - 1];

  entrenadorSeleccionado.senamones[posicion - 1] = nuevoSenamon;
  print("${nuevoSenamon.nombre} ha sido agregado al equipo de ${entrenadorSeleccionado.nombre} en la posición ${posicion}.");
}
//-----------------------------------------------------------------------------------------------------------------------------
void entrenarSenamon(Entrenador entrenador1, Entrenador entrenador2) {
  print('¿Qué entrenador deseas entrenar?');
  print('1: ${entrenador1.nombre}');
  print('2: ${entrenador2.nombre}');
  print("Ingresa el número del entrenador: ");
  String? numeroEntrenador = stdin.readLineSync();
  int? seleccion = int.tryParse(numeroEntrenador ?? '');

  Entrenador? entrenadorSeleccionado;
  if (seleccion == 1) {
    entrenadorSeleccionado = entrenador1;
  } else if (seleccion == 2) {
    entrenadorSeleccionado = entrenador2;
  } else {
    print(("Selección de entrenador no válida."));
    return;
  }

  entrenadorSeleccionado.entrenarSenamones();
}
//---------------------------------------------------------------------------------------------------------------
void iniciarBatalla(Entrenador entrenador1, Entrenador entrenador2) {
  print("¡La batalla comienza entre ${entrenador1.nombre} y ${entrenador2.nombre}!");

  int victoriasEntrenador1 = 0;
  int victoriasEntrenador2 = 0;

  while (victoriasEntrenador1 < 5 && victoriasEntrenador2 < 5) {
    // Comprobar si todos los Senamones del entrenador1 están derrotados
    if (!tieneSenamonesDisponibles(entrenador1)) {
      print("${entrenador1.nombre} no tiene más Senamones disponibles. ${entrenador2.nombre} gana la batalla.");
      return; 
    }
    
    // Comprobar si todos los Senamones del entrenador2 están derrotados
    if (!tieneSenamonesDisponibles(entrenador2)) {
      print("${entrenador2.nombre} no tiene más Senamones disponibles. ${entrenador1.nombre} gana la batalla.");
      return; 
    }
    // Lanzamiento de moneda para determinar quién inicia
    String primero = lanzarMoneda() ? entrenador1.nombre : entrenador2.nombre;
    print("Lanzamiento de moneda... ¡$primero comienza la batalla!");

    // Elegir Senamon para la batalla
    Senamon senamon1 = seleccionarSenamon(entrenador1);
    Senamon senamon2 = seleccionarSenamon(entrenador2);

    // Simulación de la batalla entre Senamones
    while (senamon1.puntosSalud > 0 && senamon2.puntosSalud > 0) {
      if (primero == entrenador1.nombre) {
        atacar(senamon1, senamon2);
        if (senamon2.puntosSalud > 0) {
          atacar(senamon2, senamon1);
        }
      } else {
        atacar(senamon2, senamon1);
        if (senamon1.puntosSalud > 0) {
          atacar(senamon1, senamon2);
        }
      }
    }
    // Determinar quién ganó la batalla
    if (senamon1.puntosSalud > 0) {
      print("${entrenador1.nombre} gana esta ronda con su Senamon ${senamon1.nombre}.");
      victoriasEntrenador1++;
    } else {
      print("${entrenador2.nombre} gana esta ronda con su Senamon ${senamon2.nombre}.");
      victoriasEntrenador2++;
    }

    // Mostrar el estado de la batalla
    print("${entrenador1.nombre}: $victoriasEntrenador1 victorias");
    print("${entrenador2.nombre}: $victoriasEntrenador2 victorias");

    // Comprobar si algún entrenador ha ganado 3 rondas
    if (victoriasEntrenador1 == 3 || victoriasEntrenador2 == 3) {
      Entrenador ganador = victoriasEntrenador1 == 3 ? entrenador1 : entrenador2;
      print("${ganador.nombre} ha ganado la batalla completa.");
      ganador.nivelExperiencia += 100;
      ganador.batallasGanadas++;
    }
  }
}
// Función para comprobar si un entrenador tiene Senamones disponibles
bool tieneSenamonesDisponibles(Entrenador entrenador) {
  for (Senamon senamon in entrenador.senamones) {
    if (senamon.puntosSalud > 0) {
      return true; 
    }
  }
  return false; // Todos los Senamones están derrotados
}
// Función para lanzar una moneda
bool lanzarMoneda() {
  return (DateTime.now().microsecond % 2 == 0);
}
// Función para seleccionar un Senamon válido
Senamon seleccionarSenamon(Entrenador entrenador) {
  print("Selecciona un Senamon para la batalla, ${entrenador.nombre}:");
  for (int i = 0; i < entrenador.senamones.length; i++) {
    print('${i + 1}. ${entrenador.senamones[i].nombre} - Salud: ${entrenador.senamones[i].puntosSalud}');
  }
  int seleccion = int.parse(stdin.readLineSync()!);

  Senamon senamonSeleccionado = entrenador.senamones[seleccion - 1];

  if (senamonSeleccionado.puntosSalud > 0) {
    print("${entrenador.nombre} ha seleccionado a ${senamonSeleccionado.nombre}.");
    return senamonSeleccionado;
  } else {
    print("${senamonSeleccionado.nombre} no tiene suficientes puntos de salud. Selecciona otro Senamon.");
    return seleccionarSenamon(entrenador); 
  }
}
// Función para ejecutar un ataque de un Senamon a otro
void atacar(Senamon atacante, Senamon defensor) {
  int dano = atacante.nivelAtaque;
  defensor.puntosSalud -= dano;
  print("${atacante.nombre} ataca a ${defensor.nombre} y causa $dano puntos de daño.");
  print("Salud restante de ${defensor.nombre}: ${defensor.puntosSalud}");
}
void mostrarJugadorConMasVictorias(Entrenador entrenador1, Entrenador entrenador2) {
  if (entrenador1.batallasGanadas > entrenador2.batallasGanadas) {
    print("${entrenador1.nombre} tiene más victorias con ${entrenador1.batallasGanadas} victorias");
  } else if (entrenador2.batallasGanadas > entrenador1.batallasGanadas) {
    print("${entrenador2.nombre} tiene más victorias con ${entrenador2.batallasGanadas} victorias");
  } else {
    print("Ambos entrenadores tienen la misma cantidad de victorias.");
  }
}
