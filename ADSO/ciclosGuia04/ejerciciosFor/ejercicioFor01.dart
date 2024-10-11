/*1. Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado
de Algoritmos.*/

import 'dart:io';

void main() {
 //definicion
  double suma = 0;
  double calificacion, promedio;
//entrada
  for (int i = 1; i <= 7; i++) {
    print("Ingresa la calificación $i:");
    calificacion = double.parse(stdin.readLineSync()!);
    //proceso
    suma = suma + calificacion;
  }

   promedio = suma / 7;

//salida
  print("El promedio de las 7 calificaciones es: $promedio");
}

