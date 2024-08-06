import 'dart:io';
import 'Empleado.dart';

void main(List args) {
  List <Empleado> empleados = [];
  int cantidadEmpleados;
  print("ingrese la cantidad de empleados");
  cantidadEmpleados = int.parse(stdin.readLineSync()!);

  for (int i = 1; i < cantidadEmpleados; i++) {
    print("Ingrese el nombre del empleado $i:");
    String nombre = stdin.readLineSync()!;
    
    print("Ingrese la edad del empleado $i:");
    int edad = int.parse(stdin.readLineSync()!);
    
    print("Ingrese el salario del empleado $i:");
    double salario = double.parse(stdin.readLineSync()!);
    
    print("Ingrese el puesto del empleado $i:");
    String puesto = stdin.readLineSync()!;
    
    print("Ingrese el tipo de contrato del empleado $i:");
    String tipoContrato = stdin.readLineSync()!;
    
    empleados.add(Empleado(nombre, edad, salario, puesto, tipoContrato));
  }

  for (int i = 0; i < empleados.length; i++) {
    empleados[i].mostrarInformacion();
    empleados[i].aumentarSalario(10);
    empleados[i].cumplirAnios();
    empleados[i].mostrarInformacion();
    empleados[i].calcularBonificacion();
  }
}