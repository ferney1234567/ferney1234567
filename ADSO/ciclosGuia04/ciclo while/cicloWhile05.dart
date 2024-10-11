//Obtener el promedio de calificaciones de un grupo de n alumnos

import 'dart:io';

void main() {
  int numeroAlumnos, contador;
  double calificacion, suma = 0;
   double promedio;
//entrada
  stdout.write("Ingresa el número de alumnos: ");
  numeroAlumnos = int.parse(stdin.readLineSync()!);

  contador = 1;
//proceso
  while (contador <= numeroAlumnos) {
    stdout.write("Ingresa una calificación: ");
    calificacion = double.parse(stdin.readLineSync()!);

    suma = suma + calificacion;

    contador++;
  }
   promedio = suma / numeroAlumnos;
   //salida
  print("El promedio del grupo es: $promedio");
}
