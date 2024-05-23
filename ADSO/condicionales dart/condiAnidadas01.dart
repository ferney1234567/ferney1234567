//Dado tres números calcular el mayor

import 'dart:io';

void main() {

   int numero1,numero2,numero3;
  int mayor;

//entrada
  print("Ingrese el primer número:");
  numero1 = int.parse(stdin.readLineSync()!);
  
  print("Ingrese el segundo número:");
  numero2 = int.parse(stdin.readLineSync()!);
  print("Ingrese el tercer número:");
   numero3 = int.parse(stdin.readLineSync()!);
//proceso

   if (numero1 > numero2 && numero1 > numero3) { 
    mayor = numero1;
  } else if (numero2 > numero1 && numero2 > numero3) { 
    mayor = numero2;
  } else { 
    mayor = numero3;
  }
  //salida
  
  print("El  número mayor  es: $mayor");
}
