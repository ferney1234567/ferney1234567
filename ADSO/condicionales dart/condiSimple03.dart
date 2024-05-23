/*El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para
sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio
unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al
precio normal. */
import 'dart:io';

void main() {
  String tipoTraje;
  double precioUnitario ,precioTraje, descuento;
  int cantidadTrajes;
  
  precioTraje =40000;
//entrada
  print("Ingrese el tipo del traje: ");
  tipoTraje = stdin.readLineSync()!;
  
  print("Ingrese el precio unitario del traje: ");
   precioUnitario = double.parse(stdin.readLineSync()!);
  
  print("Ingrese la cantidad de trajes ordenados: ");
  cantidadTrajes = int.parse(stdin.readLineSync()!);
   //proceso
  if (cantidadTrajes >= 3) {
     descuento = precioTraje * 0.17;
   precioTraje = precioTraje - descuento;
  }
//salida
    print("Total a pagar con descuento del $tipoTraje");
    print("el presio total es :$precioTraje");
  }





  

