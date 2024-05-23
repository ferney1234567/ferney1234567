/*Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de
plagas. Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea
fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución : 
Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea 
Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea 
Tipo 3 : Fumigación contra gusanos, $80000 por hectárea. 
Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea. 
• Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento.
• Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre la
cantidad que sobrepase el $1000000.
• Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero.
 
Diseñe el programa que lea el nombre del granjero, el tipo de fumigación solicitada (1-4) y el número de
hectáreas a fumigar.  
Se debe imprimir el nombre del granjero y la cuenta total. */

import 'dart:io';

void main() {
  String nombre;
  double numHectareas, descuento, precioFumig, totalPagar;
  int tipoFumig;
  //entrada
  stdout.write("Digite su nombre: ");
  nombre = stdin.readLineSync()!;
  stdout.write("Digite el número de hectáreas: ");
  numHectareas = double.parse(stdin.readLineSync()!);
  stdout.write("Digite el tipo de fumigación (1-4): ");
  tipoFumig = int.parse(stdin.readLineSync()!);
  //proceso
descuento =0;
  switch (tipoFumig) {
    case 1:
      precioFumig = numHectareas * 50000;
      break;
    case 2:
      precioFumig = numHectareas * 70000;
      break;
    case 3:
      precioFumig = numHectareas * 80000;
      break;
    case 4:
      precioFumig = numHectareas * 190000;
      break;
    default:
      print("Tipo de fumigación incorrecto.");
      return;
  }
 
  if (numHectareas > 100) {
    descuento = precioFumig * 0.05;
  }
  if (precioFumig > 1000000) {
    double excedente = precioFumig - 1000000;
    descuento += excedente * 0.1;
  }

  totalPagar = precioFumig - descuento;
  //salida
  print("$nombre, el total a pagar es de: $totalPagar Pesos");
}
