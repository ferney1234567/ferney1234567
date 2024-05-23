//Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo
//para calcular la calificación promedio y la calificación más baja de todo el grupo.
import 'dart:io';

void main() {
  double calificacion ,promedio, calificacionBaja;
  double suma =0;
  calificacionBaja = 5 ;

  for (int i = 1; i <= 40; i++) {
    print("Ingresa la calificacion $i:");
    calificacion = double.parse(stdin.readLineSync()!);

    suma = suma + calificacion;

  if (calificacion < calificacionBaja) {
    calificacionBaja = calificacion;

  }
  }
    promedio = suma  / 40;

    print("la calificacion promedio es $promedio");
    print("la nota menor es $calificacionBaja");

  }

 

