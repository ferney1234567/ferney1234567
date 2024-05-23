/*Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente*/

import 'dart:io';

void main() {
  int numero1, numero2;
//entrada
  print("Digite el primer número:");
  numero1 = int.parse(stdin.readLineSync()!);

  print("Digite el segundo número:");
  numero2 = int.parse(stdin.readLineSync()!);
//proceso
  if (numero1 < numero2) {
    print("$numero1, $numero2");
  } else {
    //salida
    print("$numero2, $numero1");
  }
}
