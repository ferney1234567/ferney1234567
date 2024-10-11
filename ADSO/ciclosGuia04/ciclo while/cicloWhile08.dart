//Encontrar el mayor valor de un conjunto de n números dados.
import 'dart:io';
void main() {
  double numeroMayor = 0;
  int contador= 1;
  int cantidadTotal;
  double numero;
//entrada
  print("Escriba la cantidad de números que desea poner: ");
  cantidadTotal = int.parse(stdin.readLineSync()!);
//proceso
  while (contador <= cantidadTotal) {
    print("Digite un número: ");
     numero = double.parse(stdin.readLineSync()!);

    if (numero> numeroMayor) {
      numeroMayor = numero;
    }
    contador++;
  }
  //salida
  print("El mayor número es: $numeroMayor");
}



