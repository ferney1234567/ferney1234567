/*Un cliente ordena cierta cantidad de brochas de cerda y rodillos; las brochas de cerda tienen un 20% de
descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad
pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un
programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como
para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el
usuario ingresa 2. */

import 'dart:io';

void main() {
  int cantidadBrochas, cantidadRodillos;
  double precioBrochas, precioRodillos, costoTotalSinDescuento;
  double descuentoBrochas = 0, descuentoRodillos = 0, costoTotalConDescuento, totalPago, formaPago, descuento;
  //entrada
  print("Ingrese la cantidad de brochas de cerda:");
  cantidadBrochas = int.parse(stdin.readLineSync()!);

  print("Ingrese el precio unitario de las brochas de cerda:");
  precioBrochas = double.parse(stdin.readLineSync()!);

  print("Ingrese la cantidad de rodillos:");
  cantidadRodillos = int.parse(stdin.readLineSync()!);

  print("Ingrese el precio unitario de los rodillos:");
  precioRodillos = double.parse(stdin.readLineSync()!);
//proceso
  descuentoBrochas = cantidadBrochas * precioBrochas * 0.2;
  descuentoRodillos = cantidadRodillos * precioRodillos * 0.15;

  costoTotalSinDescuento = cantidadBrochas * precioBrochas + cantidadRodillos * precioRodillos;

  costoTotalConDescuento = costoTotalSinDescuento - descuentoBrochas - descuentoRodillos;
    
  totalPago =0;

  print("Ingrese 1 si va a pagar de contado, 2 si va a pagar a crédito:");
  formaPago = double.parse(stdin.readLineSync()!);

  if (formaPago == 1) {
    descuento = costoTotalConDescuento * 0.07;
    totalPago = costoTotalConDescuento - descuento;
  } else if (formaPago == 2) {
    descuento = 0;
    totalPago = costoTotalConDescuento;
  } else {
    print("Forma de pago no válida.");
  
  }
  //salida

  print("El total a pagar es de $totalPago");
}
