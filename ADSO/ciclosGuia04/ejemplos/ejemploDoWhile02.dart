//realizar un algoritmo que permita solicitar una clave numerica al usuario y no permita continuar hasta que no
//ingrese la clave  valida

import 'dart:io';

void main() {
  int claveValida = 1234;
  int claveIngresada =100;
  
  do {
 print("Ingrese la clave numérica: "); 
    if (claveIngresada != claveValida) {
      print('Clave incorrecta');
    }
  } while (claveIngresada != claveValida);
  print('Clave correcta');
}
