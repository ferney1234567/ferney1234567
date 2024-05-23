/*Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000
si se compran menos de 5 llantas y de $70000 si se compran 5 o más */

import 'dart:io';

void main() {
 double total,cantidad,precio;
//entrada
 print("ingrese la cantidad de llantas");
 cantidad = double.parse(stdin.readLineSync()!);

 precio = 200000;
//proceso
 if(cantidad < 5){
  precio = 80000;
 }
 if(cantidad  <5 ){
 precio = 70000;

total = precio * cantidad;
 //salida
 print("el total a pagar es de $total ");

}

}