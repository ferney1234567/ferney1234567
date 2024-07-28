/*Hacer un algoritmo que llene una matriz de 10 * 10 y determine la posición [fila, columna] del número
mayor almacenado en la matriz. Los números son diferentes.
*/
import 'dart:io';

void main(List<String> args) {
  List<List<double>> matriz = [];
  int cantFilas = 2, cantidadColumnas = 2;
   int filaMayor = 0, columnaMayor = 0;
    double mayor = matriz[0][0];

  // Llenado de la matriz
  for (int i = 0; i < cantFilas; i++) {
    List<double> fila = [];
    for (int j = 0; j < cantidadColumnas; j++) {
      print("Ingrese el número de la posición $i, $j");
      fila.add(double.parse(stdin.readLineSync()!));
    }
    matriz.add(fila);
  }

  // Impresión de la matriz
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[0].length; j++) {
      stdout.write("|");
      stdout.write(matriz[i][j]);
    }
    print("|");
  }

  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[0].length; j++) {
      if (matriz[i][j] > mayor) {
        mayor = matriz[i][j];
        filaMayor = i;
        columnaMayor = j;
      }
    }
  }

  print("El número mayor es $mayor y se encuentra en la posición fila: $filaMayor, columna: $columnaMayor");
}
