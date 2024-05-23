/*Hacer un programa que lea caracteres desde teclado hasta que lea 10 veces la letra 'a'. Por cada
carácter leído que no sea una 'a' debe mostrar un mensaje indicándolo. Cuando lea las 10 letras 'a'
el programa terminará*/
import 'dart:io';

void main() {
  int contadorA = 0;
  int contadorNoA = 0;
  String  palabra;
//entrada
  do {
    stdout.write('Ingresa un carácter: ');
    palabra = stdin.readLineSync()!;
//proceso
    if (palabra == 'a') {
      contadorA++;
    } else {
      contadorNoA++;
      print('El carácter ingresado no es una "a".');
    }
  } while (contadorA < 10);
//salida
  print('Se leyeron 10 letras "a".');
  print('Se ingresaron $contadorNoA caracteres que no son "a".');
}



