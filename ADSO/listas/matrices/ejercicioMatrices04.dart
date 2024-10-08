/*La escuela Ignacio Barrera, desea que le desarrolles un juego para sus alumnos de primaria. El juego
se llama "cuadro mágico", un cuadro mágico es aquel en que la suma de cada fila, la suma de cada
columna y la suma de las diagonales es exactamente igual. El cuadro mágico es de dos dimensiones.
Desarrollar un programa que pida al usuario las dimensiones deseadas para el cuadro mágico (un
arreglo de dos dimensiones) en forma de cuadro y luego le pida los datos para llenar el arreglo.
Después el programa debe calcular la suma de cada fila, de cada columna y de cada diagonal del
cuadro, si todas las sumas son iguales entonces le deberás de indicar por medio de un mensaje
"Felicidades creaste un cuadro mágico", de lo contrario le deberás de decir el siguiente mensaje:
"Modifica los números en el cuadro para que lo hagas mágico".*/
import 'dart:io';

void main() {
  // Pedir al usuario las dimensiones del cuadro mágico
  print('Ingrese la dimensión del cuadro mágico (n x n):');
  int numero = int.parse(stdin.readLineSync()!);

  // Crear la matriz con dimensiones n x n manualmente
  List<List<int>> cuadroMagico = [];
  for (int i = 0; i < numero; i++) {
    List<int> fila = [];
    for (int j = 0; j < numero; j++) {
      fila.add(0); // Inicializar con 0
    }
    cuadroMagico.add(fila); // Agregar la fila a la matriz
  }

  // Pedir al usuario que llene la matriz
  print('Ingrese los números para llenar el cuadro mágico:');
  for (int i = 0; i < numero; i++) {
    for (int j = 0; j < numero; j++) {
      print('Elemento [$i][$j]: ');
      cuadroMagico[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Calcular la suma de la primera fila para tener la referencia de comparación
  int sumaReferencia = 0;
  for (int j = 0; j < numero; j++) {
    sumaReferencia += cuadroMagico[0][j];
  }

  bool esCuadroMagico = true;

  // Verificar las sumas de las filas
  for (int i = 0; i < numero; i++) {
    int sumaFila = 0;
    for (int j = 0; j < numero; j++) {
      sumaFila += cuadroMagico[i][j];
    }
    if (sumaFila != sumaReferencia) {
      esCuadroMagico = false;
      break;
    }
  }

  // Verificar las sumas de las columnas
  for (int j = 0; j < numero; j++) {
    int sumaColumna = 0;
    for (int i = 0; i < numero; i++) {
      sumaColumna += cuadroMagico[i][j];
    }
    if (sumaColumna != sumaReferencia) {
      esCuadroMagico = false;
      break;
    }
  }

  // Verificar la suma de la diagonal principal
  int sumaDiagonalPrincipal = 0;
  for (int i = 0; i < numero; i++) {
    sumaDiagonalPrincipal += cuadroMagico[i][i];
  }
  if (sumaDiagonalPrincipal != sumaReferencia) {
    esCuadroMagico = false;
  }

  // Verificar la suma de la diagonal secundaria
  int sumaDiagonalSecundaria = 0;
  for (int i = 0; i < numero; i++) {
    sumaDiagonalSecundaria += cuadroMagico[i][numero - 1 - i];
  }
  if (sumaDiagonalSecundaria != sumaReferencia) {
    esCuadroMagico = false;
  }

  // Mostrar el resultado
  if (esCuadroMagico) {
    print('¡Felicidades! Creaste un cuadro mágico.');
  } else {
    print('Modifica los números en el cuadro para que lo hagas mágico.');
  }
}

