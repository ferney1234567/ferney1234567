/*La empresa comercializadora Solva vende escobas, recogedores y aromatizantes,  clasifica a sus
clientes de acuerdo a la frecuencia de compras con las condiciones siguientes: 
          Si el cliente es de la categoría 1 se le descuenta el 5%
          Si el cliente es de la categoría 2 se le descuenta el 8%
          Si el cliente de de la categoría 3 se le descuenta el 12%
          Si el cliente es de la categoría 4 se le descuenta el 15%
     
     Cuando el cliente realiza una compra se generan los siguientes datos:
          Nombre del cliente
          Tipo de cliente
          Cantidad comprada de escobas, recogedores y aromatizantes.
Los precios de estos elementos son.
• Escobas. 3000.
• Recogedores. 2000
• Aromatizantes. 1000
Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla:
          Nombre del cliente
          Subtotal a pagar
          Descuento 
     Total a pagar. */
    
import 'dart:io';

void main() {
  int categoria, cantidadEscobas, cantidadRecogedores, cantidadAromatizantes;
  double totalEscobas, totalRecogedores, totalAromatizantes, descuento, totalCompra, subcompra;

  int precioEscobas = 3000;
  int precioRecogedores = 2000;
  int precioAromatizantes = 1000;
//entrada
  stdout.write("Ingrese la categoría del cliente : ");
  categoria = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la cantidad de escobas, recogedores y aromatizantes comprados");
  cantidadEscobas = int.parse(stdin.readLineSync()!);
  cantidadRecogedores = int.parse(stdin.readLineSync()!);
  cantidadAromatizantes = int.parse(stdin.readLineSync()!);
//proceso
  totalEscobas = cantidadEscobas.toDouble() * precioEscobas;
  totalRecogedores = cantidadRecogedores.toDouble() * precioRecogedores;
  totalAromatizantes = cantidadAromatizantes.toDouble() * precioAromatizantes;
  totalCompra = totalEscobas + totalRecogedores + totalAromatizantes;
  subcompra = totalCompra;
   descuento =0;
  if (categoria < 1 || categoria > 4) {
    print("La categoría es incorrecta");
  } else {
    switch (categoria) {
      case 1:
        descuento = subcompra * 0.05;
        totalCompra = subcompra - descuento;
        break;
      case 2:
        descuento = subcompra * 0.08;
        totalCompra = subcompra - descuento;
        break;
      case 3:
        descuento = subcompra * 0.12;
        totalCompra = subcompra - descuento;
        break;
      case 4:
        descuento = subcompra * 0.15;
        totalCompra = subcompra - descuento;
        break;
      default:
        print("Categoría incorrecta");
    }
    //salida
    print("Subtotal a pagar:$subcompra");
    print("Descuento: $descuento");
    print("Total a pagar: $totalCompra");
  }
}

