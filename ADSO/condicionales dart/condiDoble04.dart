 /*Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del
comprador son mayores o iguales a $800000 la cuota inicial será del 15% del costo de la casa y el resto se
distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000
la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años.
La empresa quiere saber cuanto debe pagar un comprador por concepto de cuota inicial y cuanto por cada
pago mensual ingresando el valor de la casa. */

import 'dart:io';

void main() {
  double costo, ingreso, cuotaInicial, valorCasa, cuotaMensual;

  print("Ingrese el valor de la casa:");
  costo = double.parse(stdin.readLineSync()!);
//entrada
  print("Digite su ingreso:");
  ingreso = double.parse(stdin.readLineSync()!);
 valorCasa=0;
 //proceso
  if (ingreso >= 800000) {
    cuotaInicial = costo * 0.15;
    print("El pago de la cuota inicial es de: $cuotaInicial");
    cuotaMensual = costo - cuotaInicial;
    print("El pago de la cuota mensual es de: $cuotaMensual / 120");
  } else if (ingreso < 800000) {
    cuotaInicial = costo * 0.30;
    print("El pago de la cuota inicial es de: $cuotaInicial.");
    cuotaMensual = costo - cuotaInicial;
    //salida
	
    print("El pago de la cuota mensual es de: $cuotaMensual / 84");
  }
}




