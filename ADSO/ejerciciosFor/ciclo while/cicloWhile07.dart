//Encontrar el menor valor de un conjunto de n números dados.
import 'dart:io';

void main() {
  double numeroMenor =0;
  int contador = 1;
  double numero;
  int cantidadTotal;
//entrada
  print("Escriba la cantidad de números que desea poner: ");
  cantidadTotal = int.parse(stdin.readLineSync()!);
//proceso
  while (contador <= cantidadTotal) {
    print("Digite un número: ");
     numero = double.parse(stdin.readLineSync()!);

    if (contador == 1) {
      numeroMenor = numero;
    } else {
      if (numero < numeroMenor) {
        numeroMenor = numero;
      }
    }
    contador++;
  }
//salida
  print("El número menor es: $numeroMenor");
}

