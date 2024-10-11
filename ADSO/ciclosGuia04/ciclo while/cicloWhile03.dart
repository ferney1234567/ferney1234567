/*Determinar cuantos hombres y cuantas mujeres se encuentran en un grupo de n personas,
suponiendo que los datos son extraídos alumno por alumno.*/

import 'dart:io';

void main() {
  int contador, cantidadAlumnos, sexo, hombres = 0, mujeres = 0;
//entrada
  print("Escribe el número de alumnos:");
  cantidadAlumnos = int.parse(stdin.readLineSync()!);

  contador = 1;
  while (contador <= cantidadAlumnos) {
    print("Elige un número de acuerdo a su sexo:");
    print("1 = hombre");
    print("2 = mujer");
    sexo = int.parse(stdin.readLineSync()!);
//proceso
    if (sexo == 1) {
      hombres = hombres + 1;
    } else if (sexo == 2) {
      mujeres = mujeres + 1;
    } else {
      print("Escribe un número correcto");
    
    }
    contador = contador + 1;
  }
//salida
  print('El número de alumnos hombres es: $hombres');
  print('El número de alumnos mujeres es: $mujeres');
}
