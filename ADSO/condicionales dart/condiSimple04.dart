/*Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con
descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave
es 2 el descuento en del 20% (solo existen dos claves).*/

import 'dart:io';

void main() {
 String articulo ;
 double precio , descuento ,precioDescuento;
 int clave;

 descuento =0;
//entrada
 print("ingrese el nombre del articulo es");
 articulo = stdin.readLineSync()!;

 print("ingrese la clave del articulo");
 clave = int.parse(stdin.readLineSync()!);

 print("imgrese el presio del articulo");
 precio = double .parse(stdin.readLineSync()!);
//proceso
  if(clave ==1) 
  descuento = precio * 0.10;
 if(clave ==2){
  descuento = precio *0.2;
 }
 precioDescuento = precio - descuento;
 //salida
print("el nombre del articulo es $articulo "); 
print("la clave del articulo es $clave");
print("el precio del articulo es $precio");


}

  
