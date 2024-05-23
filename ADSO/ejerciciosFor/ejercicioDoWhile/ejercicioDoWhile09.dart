 /*Escribir un programa que muestre el siguiente menú y que permita pasar magnitudes de grados a
radianes y de radianes a grados.
1. Pasar de grados a radianes
2. Pasar de radianes a grados
3. Salir del programa*/

import 'dart:io';
import 'dart:math';

void main() {
  int opcion;
  double valor;
//entrada
  do {
    print('1. Pasar de grados a radianes');
    print('2. Pasar de radianes a grados');
    print('3. Salir del programa');

    opcion = int.parse(stdin.readLineSync()!);
   //proceso
    switch (opcion) {
      case 1:
        print('Ingrese los grados:');
        valor = double.parse(stdin.readLineSync()!);
        double radianes = valor * pi / 180;
        print('$valor grados equivalen a $radianes radianes');
        break;
      case 2:
        print('Ingrese los radianes:');
        valor = double.parse(stdin.readLineSync()!);
        double grados = valor * 180 / pi;
        print('$valor radianes equivalen a $grados grados');
        break;
      case 3:
        print('Saliendo del programa...');
        break;
      default:
      //salida
        print('Opción inválida. Intente nuevamente.');
    }
  } while (opcion != 3);
}