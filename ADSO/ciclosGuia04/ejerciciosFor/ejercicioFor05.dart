//Calcular e imprimir la tabla de multiplicar de un número cualquiera. Imprimir el multiplicando, el
//multiplicador y el producto.

import 'dart:io';

void main() {

  int numero , producto;
  print("Ingresa un  número de la  tabla de multiplicar:");
   numero = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
   producto = numero * i;
    print("$numero x $i = $producto");
  }
}

