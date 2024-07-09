import 'dart:io';

class ConsoleColors {
  static String cyan(String message) => '\u001b[36m$message\u001b[0m';
  static String yellow(String message) => '\u001b[33m$message\u001b[0m';
  static String green(String message) => '\u001b[32m$message\u001b[0m';
  static String red(String message) => '\u001b[31m$message\u001b[0m';

  static String blue(String message) => '\u001b[34m$message\u001b[0m';
  static String magenta(String message) => '\u001b[35m$message\u001b[0m';

  static String bgCyan(String message) => '\u001b[46m$message\u001b[0m';
  static String bgYellow(String message) => '\u001b[43m$message\u001b[0m';
  static String bgGreen(String message) => '\u001b[42m$message\u001b[0m';
  static String bgRed(String message) => '\u001b[41m$message\u001b[0m';
  static String bgBlue(String message) => '\u001b[44m$message\u001b[0m';
  static String bgMagenta(String message) => '\u001b[45m$message\u001b[0m';

  static String bold(String message) => '\u001b[1m$message\u001b[0m';
  static String underline(String message) => '\u001b[4m$message\u001b[0m';
  static String reversed(String message) => '\u001b[7m$message\u001b[0m';
}

List<List<String>> temasEstudiantes = [];
List<int> complejidades = [];

int complejidad = 10;
int opcion = 0;
String nombre = '';

void main(List<String> args) {
  do {
    print(ConsoleColors.cyan("-" * 30));
    print(ConsoleColors.blue("Menu Principal"));
    print(ConsoleColors.cyan("-" * 30));
    print(ConsoleColors.yellow("1 = Crear temas"));
    print(ConsoleColors.yellow("2 = Añadir estudiantes a tema"));
    print(ConsoleColors.yellow("3 = Gestionar información"));
    print(ConsoleColors.yellow("4 = Iniciar sesión"));
    print(ConsoleColors.yellow("5 = Salir del sistema"));
    print(ConsoleColors.cyan("-" * 30));
    print(ConsoleColors.magenta("Digite una opción: "));

    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        print(ConsoleColors.bgBlue("Nombre del tema: "));
        String tema = stdin.readLineSync()!;
        if (tema.isNotEmpty) {
          temasEstudiantes.add([tema]);
          print(ConsoleColors.bgGreen("Tema '$tema' creado exitosamente."));
        } else {
          print(ConsoleColors.red("El nombre del tema no puede estar vacío."));
        }
        break;
      case 2:
        if (temasEstudiantes.isEmpty) {
          print(ConsoleColors.red("No hay temas creados. Por favor, cree un tema primero."));
          break;
        }
        String tema;
        int indiceTema;

        do {
          print(ConsoleColors.green("Digite el nombre del tema al que desea añadir estudiantes: "));
          tema = stdin.readLineSync()!;
          indiceTema = buscarTema(tema);
          if (indiceTema == -1) {
            print(ConsoleColors.red("Tema no encontrado. Intente nuevamente."));
          }
        } while (indiceTema == -1);

        int cantEstudiante = solicitarNumeroEstudiantes();

        for (int i = 0; i < cantEstudiante; i++) {
          print(ConsoleColors.green("Digite el nombre del estudiante ${i + 1}: "));
          String estudiante = stdin.readLineSync()!;
          if (estudiante.isNotEmpty) {
            temasEstudiantes[indiceTema].add(estudiante);
            print(ConsoleColors.green("Estudiante '$estudiante' añadido."));
          } else {
            print(ConsoleColors.red("El nombre del estudiante no puede estar vacío."));
          }
        }

        bool complejidadValida = false;
        while (!complejidadValida) {
          print(ConsoleColors.green("¿Qué complejidad tiene el tema en una escala del 1 al 10?"));
          String? nivelComplejidad = stdin.readLineSync();
          if (isNumeric(nivelComplejidad)) {
            complejidad = int.parse(nivelComplejidad
            !);

            if (complejidad >= 1 && complejidad <= 10) {
              complejidades.add(complejidad);
              print(ConsoleColors.green("Complejidad '$complejidad' añadida."));
              complejidadValida = true;
            } else {
              print(ConsoleColors.red("La complejidad debe estar entre 1 y 10."));
            }
          } else {
            print(ConsoleColors.red("Opción inválida. Debe ingresar un número."));
          }
        }
        break;
      case 3:
        gestionarInformacion();
        break;
      case 4:
        print(ConsoleColors.green("Digite su nombre: "));
        nombre = stdin.readLineSync()!;

        bool estudianteEncontrado = false;
        for (int i = 0; i < temasEstudiantes.length; i++) {
          if (temasEstudiantes[i].contains(nombre)) {
            estudianteEncontrado = true;
            String temaDelEstudiante = temasEstudiantes[i][0];
            int complejidadDelEstudiante = complejidades[i];

            print(ConsoleColors.green("Hola, tu tema es: $temaDelEstudiante con una complejidad de $complejidadDelEstudiante y los integrantes son:"));
            for (int j = 1; j < temasEstudiantes[i].length; j++) {
              print(ConsoleColors.green("- ${temasEstudiantes[i][j]}"));
            }
          }
        }
        if (!estudianteEncontrado) {
          print(ConsoleColors.red("El estudiante aún no se encuentra en el sistema."));
        }
        break;
      case 5:
        print(ConsoleColors.yellow("Saliendo del sistema..."));
        break;
      default:
        print(ConsoleColors.red("Opción inválida."));
    }
  } while (opcion != 5);
  print(ConsoleColors.cyan("Adiós! Los temas son: $temasEstudiantes."));
}

int buscarTema(String tema) {
  for (int i = 0; i < temasEstudiantes.length; i++) {
    if (temasEstudiantes[i][0] == tema) {
      return i;
    }
  }
  return -1;
}

bool isNumeric(String? s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

int solicitarNumeroEstudiantes() {
  int cantEstudiante = 0;
  bool entradaValida = false;

  while (!entradaValida) {
    print(ConsoleColors.green("¿Cuántos estudiantes desea añadir?"));
    String entrada = stdin.readLineSync()!;
    if (isNumeric(entrada)) {
      cantEstudiante = int.parse(entrada);
      if (cantEstudiante > 0) {
        entradaValida = true;
      } else {
        print(ConsoleColors.red("Debe ingresar un número mayor que cero."));
      }
    } else {
      print(ConsoleColors.red("Entrada inválida. Por favor, ingrese un número válido."));
    }
  }

  return cantEstudiante;
}

void gestionarInformacion() {
  int opcion2 = 0;
  do {
    print(ConsoleColors.blue("Gestionar Información"));
    print(ConsoleColors.cyan("1 = Ingresar nuevo tema"));
    print(ConsoleColors.cyan("2 = Editar tema"));
    print(ConsoleColors.cyan("3 = Mostrar tema"));
    print(ConsoleColors.cyan("4 = Eliminar tema"));
    print(ConsoleColors.cyan("5 = Volver al menú principal"));
    opcion2 = int.parse(stdin.readLineSync()!);
    switch (opcion2) {
      case 1:
        crear();
        break;
      case 2:
        editar();
        break;
      case 3:
        mostrar();
        break;
      case 4:
        eliminar();
        break;
      case 5:
        return; // Volver al menú principal
      default:
        print(ConsoleColors.red("Opción inválida."));
    }
  } while (opcion2 != 5);
}

void crear() {
  print(ConsoleColors.green("Digite el nombre del tema: "));
  String crear = stdin.readLineSync()!;

  if (crear.length > 0) {
    if (buscarTema(crear) != -1) {
      print(ConsoleColors.red("Ya existe un tema con ese nombre. Intente de nuevo."));
    } else {
      temasEstudiantes.add([crear]);
      print(ConsoleColors.green("Tema '$crear' creado exitosamente."));
    }
  } else {
    print(ConsoleColors.red("El nombre del tema no puede estar vacío."));
  }
}

void editar() {
  print(ConsoleColors.green("Digite el nombre del tema que desea editar: "));
  String temaAEditar = stdin.readLineSync()!;

  if (temaAEditar.length > 0) {
    int posicion = buscarTema(temaAEditar);
    if (posicion != -1) {
      print(ConsoleColors.green("Digite el nuevo nombre del tema: "));
      String nuevoTema = stdin.readLineSync()!;

      if (nuevoTema.length > 0) {
        temasEstudiantes[posicion][0] = nuevoTema;
        print(ConsoleColors.green("Tema actualizado con éxito."));
      } else {
        print(ConsoleColors.red("El nuevo nombre del tema no puede estar vacío."));
      }
    } else {
      print(ConsoleColors.red("El tema '$temaAEditar' no existe."));
    }
  } else {
    print(ConsoleColors.red("El nombre del tema no puede estar vacío."));
  }
}

void mostrar() {
  print(ConsoleColors.green("Digite el nombre del tema que desea mostrar: "));
  String temaAMostrar = stdin.readLineSync()!;

  if (temaAMostrar.length > 0) {
    int posicion = buscarTema(temaAMostrar);
    if (posicion != -1) {
      print(ConsoleColors.green("Tema: $temaAMostrar"));
      if (temasEstudiantes[posicion].length < 2) {
        print("Aún no hay estudiantes asignados");
      } else {
        print(ConsoleColors.green("Estudiantes:"));
        for (var j = 1; j < temasEstudiantes[posicion].length; j++) {
          print(ConsoleColors.green("- ${temasEstudiantes[posicion][j]}"));
        }
      }
      if (complejidades.isEmpty) {
        print("Este tema aún no tiene asignada una complejidad");
      } else {
        print(ConsoleColors.green("Complejidad: ${complejidades[posicion]}"));
      }
      print(""); // Agregar un salto de línea al final
    } else {
      print(ConsoleColors.red("Tema no encontrado."));
    }
  } else {
    print(ConsoleColors.red("El nombre del tema no puede estar vacío."));
  }
}

void eliminar() {
  print(ConsoleColors.green("Digite el tema a eliminar: "));
  String temaEliminar = stdin.readLineSync()!;
  if (temaEliminar.length > 0) {
    int posicion = buscarTema(temaEliminar);
    if (posicion != -1) {
      temasEstudiantes.removeAt(posicion);
      complejidades.removeAt(posicion);
      print(ConsoleColors.green("Tema eliminado con éxito."));
    } else {
      print(ConsoleColors.red("Tema no encontrado."));
    }
  } else {
    print(ConsoleColors.red("El nombre del tema no puede estar vacío."));
  }
}