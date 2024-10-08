import 'dart:io';


class Vehiculo {
  // Atributos de la clase
  late String color;
  late int velocidad;
  late double tamanio;
  late String parqueadero;

  // Constructor
  Vehiculo(String col, int vel, double tam, String par) {
    this.color = col;
    this.velocidad = vel;
    this.tamanio = tam;
    this.parqueadero = par;
  }

  // Método avanzar
  void avanzar(int velAvanzar) {
    if (velAvanzar > 0) {
      this.velocidad += velAvanzar;
      print("El vehículo viaja a ${this.velocidad} km/h");
      if (this.velocidad > 200) {
        print("El vehículo pierde el control");
        print("El vehículo se sale de la vía y cae monte abajo");
        print("Moriste");
        print("-" * 50);
      }
    } else {
      print("El valor a aumentar es inválido");
    }
  }

  // Método detenerse
  void detenerse() {
    velocidad = 0;
    print("El vehículo se detuvo");
    print("-" * 50);
  }

  // Método para mostrar el parqueadero
  void mostrarParqueadero() {
    print("El vehículo está parqueado en: $parqueadero");
  }

  // Método para disminuir la velocidad
  void disminuirVelocidad(int cantidad) {
    if (velocidad - cantidad < 0) {
      velocidad = 0;
    } else {
      velocidad -= cantidad;
    }
    print("La nueva velocidad es: $velocidad km/h");
  }
}
//-------------------------------------

void main(List<String> args) {
  // Manejo de Listas con objetos
  List<Vehiculo> listaVehiculos = [];
  String colorUsuario;
  String parqueadero;
  int velocidadUsuario;
  double tamanioUsuario;

  // Crear vehículos
  for (var i = 0; i < 2; i++) { // Cambiar a 2 para agregar más vehículos
    print("Ingrese el color del vehiculo ${i + 1}:");
    colorUsuario = stdin.readLineSync()!;
    print("Ingrese el lugar donde parqueó:");
    parqueadero = stdin.readLineSync()!;
    print("Ingrese la velocidad del vehiculo:");
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print("Ingrese el tamaño del vehiculo:");
    tamanioUsuario = double.parse(stdin.readLineSync()!);
    
    // Se crea el objeto
    Vehiculo vehiculo_obj = Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario, parqueadero);
    // Se adiciona el objeto a la lista
    listaVehiculos.add(vehiculo_obj);
  }

  // Ciclo para mostrar los objetos de la lista
  print("-" * 50);
  for (var i = 0; i < listaVehiculos.length; i++) {
    print("-" * 50);
    print('Vehículo: #${i + 1}');
    listaVehiculos[i].avanzar(30);
    listaVehiculos[i].disminuirVelocidad(5);
    listaVehiculos[i].avanzar(70);
    listaVehiculos[i].detenerse();
    listaVehiculos[i].mostrarParqueadero();
  }
}
