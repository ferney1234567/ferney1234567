/*En un supermercado una ama de casa pone en su carrito los artículos que va tomando de los
estantes. La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, por lo
que cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha
tomado y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los
demás artículos, hasta que decide que ya tomo todo lo que necesitaba. Ayúdale a esta señora a
obtener el total de sus compras. */
import 'dart:io';

void main() {
  int cantidad;
  double total = 0;
  double precio;
  String respuesta = '';
  do {
    //entrada
    print('Ingresa la cantidad de artículos: ');
    cantidad = int.parse(stdin.readLineSync()!);

    print('Ingresa el precio del artículo: ');
    precio = double.parse(stdin.readLineSync()!);
//proceso
    total =  total + cantidad * precio;

    print('¿Desea finalizar la compra (si/no): ');
    respuesta = stdin.readLineSync()!;
  } while (respuesta != 'si');
//salida
  print('El total a pagar por los artículos es: $total');
}


