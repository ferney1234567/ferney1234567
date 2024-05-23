/*El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus empleados bajo las siguientes normas, 
solicitar el nombre del empleado, número de horas trabajadas y la cuota}
 por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo del 5% si el empleado trabajó más de 
 40 horas. Imprimir el nombre del empleado y su sueldo*/

 import 'dart:io';

void main() {
  String nombre;
  double salario_neto, horas_trabajadas, cuota, incentivo;
//entrada
  stdout.write("Cuál es su nombre: ");
  nombre = stdin.readLineSync()!;
  stdout.write("Ingrese horas trabajadas: ");
  horas_trabajadas = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese valor de las horas trabajadas: ");
  cuota = double.parse(stdin.readLineSync()!);
//proceso
  salario_neto = horas_trabajadas* cuota;

  if (horas_trabajadas > 40) {
    incentivo = salario_neto* 0.05;
    salario_neto = salario_neto + incentivo;
  }
  //salida

  print("El nombre del empleado es: $nombre");
  print("El salario neto del empleado es: $salario_neto");
}
