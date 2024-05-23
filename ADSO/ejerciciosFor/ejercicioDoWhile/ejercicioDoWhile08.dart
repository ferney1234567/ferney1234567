/*Hacer un programa que lea caracteres desde teclado y vaya contando las vocales que aparecen. El
programa terminará cuando lea el carácter # y entonces mostrará un mensaje indicando cuántas
vocales ha leído (cuántas de cada una de ellas).*/


import 'dart:io';

void main() {
  int a = 0;
  int e = 0;
  int i = 0;
  int o = 0;
  int u = 0;

  String caracter;

  // entrada
  do {
    stdout.write("Ingrese un carácter (o '#' para terminar): ");
    caracter = stdin.readLineSync()!;

    // proceso
    if (caracter == 'a') {
      a++;
    } else if (caracter == 'e') {
      e++;
    } else if (caracter == 'i') {
      i++;
    } else if (caracter == 'o') {
      o++;
    } else if (caracter == 'u') {
      u++;
    }

  } while (caracter != '#');

  // salida
  print('Vocales contadas:');
  print('A: $a');
  print('E: $e');
  print('I: $i');
  print('O: $o');
  print('U: $u');
}
