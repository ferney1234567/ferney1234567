/*Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se
aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un descuento del 10%*/
import 'dart:io';

void main() {
  
 double total, descuento ,precio , valorCasa ;
 int numCamisas;

valorCasa=0;
//entrada
 print("digite el precio de la venta");
 precio = double.parse(stdin.readLineSync()!);

 print("digite el total de camisas compradas");
 numCamisas = int.parse(stdin.readLineSync()!);
//proceso
total = precio * numCamisas;

 if(numCamisas < 3 ){
    descuento = 0.10;
 }else{
  descuento = 0.20;
 }//salida
 print("el total a pagar es de $total");
 print("el descuento aplicado es de $descuento");
 

}
