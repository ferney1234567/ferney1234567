//desarrollar un algoritmo tal que dado como datos numeros enteros ,obtenga la suma de los 10 numeros enteros
//se mostrara la suma de dicha suma
import 'dart:io';

void main(List<String> args) {
  int num, suma;
  suma = 0;

  for (int i = 0; i < 10; i ++) {
    print("ingrese el valor del numero"+(i+1).toString());
    num = int.parse(stdin.readLineSync()!);
    //variable de tipo acumulador
    suma = suma + num;
  }
    print("la suma de los numeros ingresado es $suma");

    
  }
