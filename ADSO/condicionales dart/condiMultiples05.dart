/*-El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una
clave.
Clave           Zona           Precio
  12       América del Norte    200
  15       América Central      220
  18       América del Sur      450
  19       Europa               350
  23       Asia                 600
  25       África               600
  29       Oceanía              500
Construya la solución para calcular e imprimir el costo de una llamada dada la clave. */

import 'dart:io';

void main() {
  int llamada, horasLlamada;
  double costo, precio;
//entrada
  print("Digite la clave del país al que realizó la llamada:");
  llamada = int.parse(stdin.readLineSync()!);

  print("Digite el número de horas que estuvo en llamada:");
  horasLlamada = int.parse(stdin.readLineSync()!);
//proceso
  if (llamada < 12 || llamada > 29) {
    print("La clave ingresada no es válida. Por favor, intente de nuevo.");
  } else {
    switch (llamada) {
      case 12:
        precio = 200;
        break;
      case 15:
        precio = 220;
        break;
      case 18:
        precio = 450;
        break;
      case 19:
        precio = 350;
        break;
      case 23:
      case 25:
        precio = 600;
        break;
      case 29:
        precio = 500;
        break;
      default:
        print("El lugar no se encuentra en la lista. Por favor, intente de nuevo.");
        return;
    }

    costo = precio * horasLlamada;
    //salida
    print("El costo de la llamada es de $costo");
  }
}
