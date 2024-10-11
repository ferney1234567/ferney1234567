import 'dart:io';

void main(List<String> args) {
  // desarrolle un algoritmo que lean numeros positivos determine y muestre el promedio de los numeros positivos

 int  num, cant ,suma =0, contador=0;
 double promedio;
 print("ingrese la cantidad de numeros");
 cant = int.parse(stdin.readLineSync()!);

 while (contador < cant) {
   print("ingrese un numero positivo");
    num = int.parse(stdin.readLineSync()!);
    suma = suma + num;
    contador ++;
 }
 print("la suma de los numeros es $suma");
 promedio = suma / cant;

 print("el promedio es $promedio");




}