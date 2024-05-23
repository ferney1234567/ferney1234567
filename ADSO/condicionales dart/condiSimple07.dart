/*Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar
clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50
000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar
será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente.*/
import 'dart:io';

void main() {
double interes , cuotaTotal,monto;

interes=0;
cuotaTotal=0;
//entrada
print("ingrese  el monto ");
monto = double.parse(stdin.readLineSync()!);
//proceso
if(monto < 50000){
  interes = monto *00.3;
   cuotaTotal= interes + monto;
  print("se aplico un 3% de interes");
}
if(monto >= 50000){
  interes = monto * 00.2;
  cuotaTotal= interes + monto;
  print("se aplico un 2% de interes");
}
//salida
print("el interes a pagar es de $interes ");
print("la cuota total a pagar es de $cuotaTotal");
}
