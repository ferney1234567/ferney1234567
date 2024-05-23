/*En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento
dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el
descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%.
Obtener cuánto dinero se le descuenta.*/
import 'dart:io';
void main() {
  double compra, descuento,totalPagar;
  int numero;
//entrada
  print("Escriba el total de la cuenta:");
  compra = double.parse(stdin.readLineSync()!);
  
  print("Escribe un número:");
  numero = int.parse(stdin.readLineSync()!);
  //proceso
  if (numero < 74) {
    descuento = compra * 0.15; 
  } else {
    descuento = compra * 0.20; 
  }
  
  totalPagar = compra - descuento; 
  //salida
  print("El total a pagar por la compra es: $compra");
  print("El descuento aplicado en la compra es:$descuento");
  print("El total a pagar con descuento es:$totalPagar");
}
