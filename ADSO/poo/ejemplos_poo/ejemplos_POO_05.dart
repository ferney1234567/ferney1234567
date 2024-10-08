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

void main(List<String> args) {
  String colorUsuario;
  String parqueadero;
  int velocidadUsuario;
  double tamanioUsuario;

  // Solicitar datos al usuario
  print("Ingrese el color del vehículo:");
  colorUsuario = stdin.readLineSync()!;
  print("Ingrese el lugar donde parqueo el vehículo:");
  parqueadero = stdin.readLineSync()!;
  print("Ingrese la velocidad del vehículo:");
  velocidadUsuario = int.parse(stdin.readLineSync()!);
  print("Ingrese el tamaño del vehículo:");
  tamanioUsuario = double.parse(stdin.readLineSync()!);

  // Crear el objeto Vehiculo
  Vehiculo vehi_obj1 = Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario, parqueadero);

  // Realizar acciones con el vehículo
  vehi_obj1.avanzar(80);
  vehi_obj1.avanzar(70);
  vehi_obj1.avanzar(20);
  vehi_obj1.detenerse();
  vehi_obj1.mostrarParqueadero(); // Mostrar el lugar de parqueo
}
