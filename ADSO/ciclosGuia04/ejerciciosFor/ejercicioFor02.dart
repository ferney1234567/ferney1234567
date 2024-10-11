//Leer 10 números e imprimir solamente los números positivos

import 'dart:io';

void main(List<String> args) {
 //definir
  int numero;
  //entrada
  for (int i = 1; i <= 10; i++) {
    print("Ingresa solo números positivos $i:");
    numero = int.parse(stdin.readLineSync()!);
    //procesos
    if(numero > 0) {
      print("El número es positivo: $numero");
    } else {
      //salida
      print("El número es negativo  ");
    }
  }
}
