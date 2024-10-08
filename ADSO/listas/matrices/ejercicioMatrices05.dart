
import 'dart:io';

  /*Hacer un algoritmo que solicite los valores para llenar dos matrices de 3 * 3 y las multiplique,
almacenando el resultado en otra matriz de 3 * 3.
Se debe consultar el método para multiplicar matrices*/

void main(List<String> args) {
  // Inicializar matrices de 3x3 manualmente
  List<List<int>> matrixA = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];

  List<List<int>> matrixB = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];

  List<List<int>> matrixResultado = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];

  // Pedir al usuario que llene la primera matriz (A)
  print('Ingrese los valores de la matriz A (3x3):');
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      print('Elemento A[$i][$j]: ');
      matrixA[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Pedir al usuario que llene la segunda matriz (B)
  print('Ingrese los valores de la matriz B (3x3):');
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      print('Elemento B[$i][$j]: ');
      matrixB[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Multiplicar las matrices A y B
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      matrixResultado[i][j] = 0; // Inicializar el valor de la celda
      for (int k = 0; k < 3; k++) {
        matrixResultado[i][j] += matrixA[i][k] * matrixB[k][j];
      }
    }
  }

  // Mostrar el resultado de la multiplicación de matrices
  print('La matriz resultante de la multiplicación A * B es:');
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      print('${matrixResultado[i][j]} ');
    }
    print(''); // Salto de línea para que se vea como matriz
  }
}

