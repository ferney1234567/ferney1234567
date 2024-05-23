/*Una frutería ofrece las manzanas con descuento según la siguiente tabla:
NUM. DE KILOS COMPRADOS % DESCUENTO 
0 - 2 
0 
2.01 - 5 
10 
5.01 - 10 
15 
10.01 en adelante 
20 
Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo
vale $1300 */

import 'dart:io';

void main() {
  double kilosComprados, descuento, precio, total;
//entrada
  print("Ingrese el número de kilos de manzanas:");
  kilosComprados = double.parse(stdin.readLineSync()!);
//proceso
  precio = 1300; 

  total = precio * kilosComprados;

  if (kilosComprados <= 2) {
    descuento = 0;
  } else if (kilosComprados >= 2.01 && kilosComprados <= 5) {
    descuento = 0.10;
  } else if (kilosComprados >= 5.01 && kilosComprados <= 10) {
    descuento = 0.15;
  } else {
    descuento = 0.20;
  }

  // Calcular el descuento y el precio final
  double descuentoAplicado = total * descuento;
  double precioFinal = total - descuentoAplicado;
//salida
  print("El descuento aplicado es de $descuentoAplicado");
  print("El total a pagar por $kilosComprados kilos de manzana es: $precioFinal");
}
