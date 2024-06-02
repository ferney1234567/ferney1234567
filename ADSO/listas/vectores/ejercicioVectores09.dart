/*Una agencia de seguros desea obtener un reporte al final del día de sus n empleados para determinar
cuál fue el empleado que obtuvo el mayor sueldo en base a sus ventas y comisiones, se registrará el
nombre del empleado la edad y el sueldo que obtuvo al final del día. Desarrollar un programa que
pida al usuario el nombre de los n empleados, su edad y el sueldo para generar un reporte que lo
muestre en pantalla de la siguiente manera: el nombre del empleado, edad, sueldo, el empleado con
mayor sueldo, el sueldo del empleado que gana más y su edad.
Debe declarar un arreglo de enteros para la edad.
Debe declarar un arreglo de reales para el sueldo.
Debe declarar un arreglo de cadena para el nombre*/

import 'dart:io';

void main() {
  List<String> nombres = [];
  List<int> edades = [];
  List<double> sueldos = [];
  int numeroEmpleados = 0;
  double mayorSueldo = 0;
  String empleadoConMayorSueldo = "";

  print("Ingrese el número de empleados: ");
  numeroEmpleados = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < numeroEmpleados; i++) {
    print("Ingrese el nombre del empleado ${i + 1}: ");
    String nombre = stdin.readLineSync()!;
    nombres.add(nombre);

    print("Ingrese la edad del empleado ${i + 1}: ");
    int edad = int.parse(stdin.readLineSync()!);
    edades.add(edad);

    print("Ingrese el sueldo del empleado ${i + 1}: ");
    double sueldo = double.parse(stdin.readLineSync()!);
    sueldos.add(sueldo);

    if (sueldo > mayorSueldo) {
      mayorSueldo = sueldo;
      empleadoConMayorSueldo = nombre;
    }
  }

  print("Reporte de empleados:");
  for (int i = 0; i < numeroEmpleados; i++) {
    print("Nombre: ${nombres[i]}, Edad: ${edades[i]}, Sueldo: ${sueldos[i]}");
  }

  print("El empleado con el mayor sueldo es: $empleadoConMayorSueldo");
  print("El sueldo más alto es: $mayorSueldo");
}
