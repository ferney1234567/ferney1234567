/*Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el
cual introduzca un número entero positivo e invierta los dígitos del número. Mostrar el número
invertido. */

import 'dart:io';

void main() {
  int contador, inverso, num, residuo;
  //entrada
  do {
    stdout.write("Digite un número entero positivo de dos o más cifras para invertir: ");
    num = int.parse(stdin.readLineSync()!);

    //proceso
    residuo = num % 10;
    inverso = num ~/ 10;
    print("El número invertido es: $residuo$inverso");
    contador = int.parse(stdin.readLineSync()!);

    //salida
  } while (contador == 1);
}

