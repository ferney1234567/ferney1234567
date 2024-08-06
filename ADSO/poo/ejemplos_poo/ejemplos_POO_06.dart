import 'dart:io';

import '../../vehiculo.dart';
import 'ejemplos_POO_04.dart';

void main(List<String> args) {
  //Manejo de Listas con objetos
  
  //Lista de String
  List<String> nombreVehiculos = [];
  int cantInteraciones = 5;
  String nomVehiculo;
  
  //-------------------------------------------------------------
  List<Vehiculo> listaVehiculos = [];
  String colorUsuario;
  String parqueadero;
  int velocidadUsuario;
  double tamanioUsuario;

  for (var i = 0; i < 1; i++) {
    print("Iingrese el color del vehiculo ${i + 1}");
    colorUsuario = stdin.readLineSync()!;
    print("Iingrese el lugar donde parqueo");
    parqueadero = stdin.readLineSync()!;
    print("ingrese la velocidad del vehiculo");
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print("ingrese el tamaño del vehiculo");
    tamanioUsuario = double.parse(stdin.readLineSync()!);
    //Se crea el objeto
    Vehiculo vehiculo_obj = Vehiculo(colorUsuario, parqueadero, velocidadUsuario, tamanioUsuario);
    //Se adiciona el objeto a la lista
    listaVehiculos.add(vehiculo_obj);
  }
  //Ciclo mostrar los objetos de la lista
  print("-" * 50);
  for (var i = 0; i < 1; i++) {
    print("-" * 50);
    print('Vehiculo: #${i + 1}');
    listaVehiculos[i].avanzar(30);
    listaVehiculos[i].disminuirVelocidad(5);
    listaVehiculos[i].avanzar(70);
    listaVehiculos[i].detenerse();
    listaVehiculos[i].parqueadero();

  }
}