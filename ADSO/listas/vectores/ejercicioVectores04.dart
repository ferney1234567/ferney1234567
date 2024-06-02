/*Almacenar 8 números en un vector, almacenarlos en otro vector en orden inverso al vector original
e imprimir el vector resultante*/

import 'dart:io';

void main(List<String> args) {
  List<int> listaNumeros = [];
  List<int> listaInversa = [];

  int numero;

  //  vector original
  for (int i = 0; i < 8; i++) {
    print("Ingrese el número ${i + 1}:");
    numero = int.parse(stdin.readLineSync()!);
    listaNumeros.add(numero);
  }

  // Crear el vector inverso
for (int i = 0; i < 8; i++) {
    listaInversa.add(listaNumeros [listaNumeros.length-i-1]);
  }

  print("Vector original: $listaNumeros");
  print("Vector inverso: $listaInversa");
}
