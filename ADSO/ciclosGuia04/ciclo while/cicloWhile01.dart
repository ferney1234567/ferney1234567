/*Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana.
Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de
sus ventas. El gerente de su compañía desea saber cuanto dinero obtendrá en la semana cada
vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su
sueldo base y sus comisiones.*/
import 'dart:io';

void main() {
  int contador, numVendedores;
  double sueldoBase, comision, venta1, venta2, venta3;
  //entrada
print("Ingrese el número de trabajadores: ");
  numVendedores = int.parse(stdin.readLineSync()!);
//proceso
  contador = 1;
  comision = 0;

  while (contador <= numVendedores) {
    print("Ingrese el sueldo base del trabajador  ");
    sueldoBase = double.parse(stdin.readLineSync()!);

    stdout.write("Ingrese las tres ventas del mes  ");
    venta1 = double.parse(stdin.readLineSync()!);
    venta2 = double.parse(stdin.readLineSync()!);
    venta3 = double.parse(stdin.readLineSync()!);

    comision = (venta1 + venta2 + venta3) * 0.10;
//salida
    print("El sueldo mensual del trabajador  es: $sueldoBase");
    print("La comision del mes del trabajador  es: $comision");
    print("El sueldo total con la comisión para el trabajador es ${sueldoBase + comision}");

 
  }
}
