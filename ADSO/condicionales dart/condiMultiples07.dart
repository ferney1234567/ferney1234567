/*El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una
clave. Construya la solución para calcular e imprimir el costo de una llamada dada la clave y la
duración de la llamada.
.
Clave         Zona          Precio          Precio/minuto
-----------------------------------------(del 4 en adelante)
12      América del Norte    200               150
15      América Central      220               180
18      América del Sur      450               350
19      Europa               350               270
23      Asia                 600               460
25      África               600               460
29      Oceanía              500               390 */

import 'dart:io';

void main() {
  int clavePais, duracionMinutos;
  double costoPorMinuto, costoTotal;
//entrada
  print("Ingrese la clave del país al que realizó la llamada:");
  clavePais = int.parse(stdin.readLineSync()!);

  print("Ingrese la duración de la llamada en minutos:");
  duracionMinutos = int.parse(stdin.readLineSync()!);

//proceso
  if (clavePais >= 12 && clavePais <= 29) {
    switch (clavePais) {
      case 12:
        costoPorMinuto = 150;
        break;
      case 15:
        costoPorMinuto = 180;
        break;
      case 18:
        costoPorMinuto = 350;
        break;
      case 19:
        costoPorMinuto = 270;
        break;
      case 23:
      case 25:
        costoPorMinuto = 460;
        break;
      case 29:
        costoPorMinuto = 390;
        break;
      default:
        costoPorMinuto = 0;
        break;
    }

   
    if (costoPorMinuto > 0) {
      costoTotal = costoPorMinuto * duracionMinutos / 60; 
      print("El costo de la llamada es de $costoTotal");
    } else {
      print("La clave de país ingresada no es válida.");
    }
  } else {//salida
    print("La clave de país ingresada no es válida. Intente de nuevo.");
  }
}

