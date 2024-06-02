/*Almacenar 15 números en un vector, imprimir cuantos son ceros, cuántos son negativos, cuantos
positivos. Imprimir además la suma de los negativos, la suma de los ceros y la suma de los positivos.*/

import 'dart:io';

void main(List<String> args) {
  List<double> listaNumeros = [];
  int cantidadNumeros = 15;
  double numero, sumaNegativos = 0, sumaCeros = 0, sumaPositivos = 0;

  // Ciclo para llenar el vector
  for (int i = 0; i < cantidadNumeros; i++) {
    print("Ingrese un número ${i + 1}:");
    numero = double.parse(stdin.readLineSync()!);
    listaNumeros.add(numero);
  }
  // acumulación de valores
  for (var i = 0; i < cantidadNumeros; i++) {
    if (listaNumeros[i] > 0) {
      sumaPositivos = sumaPositivos + listaNumeros[i];
    } else if (listaNumeros[i] < 0) {
      sumaNegativos= sumaNegativos + listaNumeros[i];
    } else {
      sumaCeros++;
    }
  }

  // Salida
  print("Cantidad de ceros: $sumaCeros");
  print("Cantidad de negativos: $sumaNegativos"); 
  print("Cantidad de positivos: $sumaPositivos");
  print("Suma de los negativos: $sumaNegativos");
  print("Suma de los ceros: $sumaCeros");
  print("Suma de los positivos: $sumaPositivos");
}

  