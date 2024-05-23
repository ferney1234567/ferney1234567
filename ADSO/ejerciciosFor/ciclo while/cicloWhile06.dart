//Calcular el promedio de edades de hombres, mujeres y de todo un grupo de n alumnos.

import 'dart:io';

void main() {
  // Definimos las variables
  int totalAlumnos, edad, suma = 0;
  int contador = 1; 
  double promedio;
//entrada
  print('Ingresa el total de alumnos:');
  totalAlumnos = int.parse(stdin.readLineSync()!);
//proceso
  while (contador <= totalAlumnos) {
    print('Ingresa la edad del alumno $contador:');
  edad = int.parse(stdin.readLineSync()!);

    suma = suma + edad;

    contador++;
  }
  promedio = suma / totalAlumnos;
  //salida
  print('El promedio de edades de todo el grupo es: $promedio');
}
