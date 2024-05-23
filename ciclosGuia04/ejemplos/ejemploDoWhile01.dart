import 'dart:io';

void main(List<String> args) {
int num , suma =0;

do {
  print("ingrese un numero (0 para salir)");
  num = int.parse(stdin.readLineSync()!);
  
  if (num % 2 ==0) {
     suma = suma + num ; 
  }else{
    print("no se suma el numero es par");
  }
  
  } while ( num != 0);
    print("el valor de la suma es $suma");
  }
  
