import 'dart:io';

import 'vehiculo.dart';

void main(List<String> args) {
  String colorUsuario;
  String parqueadero;
  int velocidadUsuario;
  double tamanioUsuario;
  print("ingrese el color del vehiculo");
  colorUsuario = stdin.readLineSync()!;
  print("ingrese el lugar donde parqueo el vehiculo");
  parqueadero = stdin.readLineSync()!;
  print("ingrese la velocidad del vehiculo");
  velocidadUsuario = int.parse(stdin.readLineSync()!);
  print("ingrese el tamaño del vehiculo");
  tamanioUsuario = double.parse(stdin.readLineSync()!);
  Vehiculo vehi_obj1 = Vehiculo(colorUsuario, parqueadero, velocidadUsuario, tamanioUsuario);
  vehi_obj1.Avanzar(80);
  vehi_obj1.Avanzar(70);
  vehi_obj1.Avanzar(20);
  vehi_obj1.detenerse();
}