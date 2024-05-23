/*-Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función:
Val               Num
100 * v            1
100 ^ v            2
100 / v            3
0           Cualquier número */

import 'dart:io';
import 'dart:math';

void main() {
  int funcion;
  double numero, variable;
//entrada
  print("digite un numero");
  numero = double.parse(stdin.readLineSync()!);

  print("digite su funcion");
  funcion = int.parse(stdin.readLineSync()!);
//proceso

  if (funcion < 1 || funcion > 3){
    print("0");
  }else{
    switch (funcion) {
      case 1:
      variable = 100 * numero;
      print("el resultado de la funcion es: $variable");
      break;
      case 2:
      //POW se usa para el elevado
      variable = pow(100, numero).toDouble();
      print("el resultado de la funcion es: $variable");
      break;
      case 3:
      variable = 100 / numero;
      print("el resultado de la funcion es: $variable");
      break;
      //salida
    default:
      print("0");
    }
  }
}