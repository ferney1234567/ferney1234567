/*Leer por cada alumno de Diseño estructurado de algoritmos su número de control y su calificación en
cada una de las 5 unidades de la materia. Al final que escriba el número de control del alumno que
obtuvo mayor promedio. Suponga que los alumnos tienen diferentes promedios*/

import 'dart:io';

void main() {
  // Declaramos las variables
  int numeroAlumnos, control, controlMayor = 0;
  double calificacion1, calificacion2, calificacion3, calificacion4, calificacion5, promedio, promedioMayor;
//entrada
  print('Ingresa el total de alumnos');
  numeroAlumnos = int.parse(stdin.readLineSync()!);

  promedioMayor = 0;
//proceso
  do {
    print('Ingresa tu número de control');
    control = int.parse(stdin.readLineSync()!);

    stdout.writeln('Ingresa las 5 calificaciones:');
    calificacion1 = double.parse(stdin.readLineSync()!);
    calificacion2 = double.parse(stdin.readLineSync()!);
    calificacion3 = double.parse(stdin.readLineSync()!);
    calificacion4 = double.parse(stdin.readLineSync()!);
    calificacion5 = double.parse(stdin.readLineSync()!);

    promedio = (calificacion1 + calificacion2 + calificacion3 + calificacion4 + calificacion5) / 5;

    print('El promedio es: $promedio');

    if (promedio > promedioMayor) {
      promedioMayor = promedio;
      controlMayor = control;
    }
    numeroAlumnos--;

  } while (numeroAlumnos > 0);
//salida
  print('El promedio mayor es: $promedioMayor');
  print('El número de control del alumno es: $controlMayor');
}
