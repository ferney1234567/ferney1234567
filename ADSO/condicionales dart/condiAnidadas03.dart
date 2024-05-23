/*En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del
número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10%
de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco
pero menos de diez se le otorga un 20% de descue
nto; y si son 10 o más se les da un 40% de
descuento. El precio de cada computadora es de $1100000*/

import 'dart:io';

void main() {
  double descuento, totalCompra, totalPagar;
  int numeroComputadoras;
//entrada
  print("Digite el número de computadoras:");
  numeroComputadoras = int.parse(stdin.readLineSync()!);
//proceso
  totalCompra = numeroComputadoras * 1100000; 

  if (numeroComputadoras < 5) {
    descuento = totalCompra * 0.10;
  } else if (numeroComputadoras >= 5 && numeroComputadoras < 10) {
    descuento = totalCompra * 0.20;
  } else {
    descuento = totalCompra * 0.40;
  }

  totalPagar = totalCompra - descuento;
//salida
  print("Número de computadoras compradas: $numeroComputadoras");
  print("Total de compra: $totalCompra");
  print("Descuento aplicado: $descuento");
  print("Total a pagar: $totalPagar");
}
