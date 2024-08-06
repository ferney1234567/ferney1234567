class Vehiculo {
  //Atributos de la clase
  late String color;
  late int velocidad;
  late double tamanio;

  Vehiculo(String col, int vel, double tam) {
    this.color = col;
    this.velocidad = vel;
    this.tamanio = tam;
  }

//Metodo avanzar
  void avanzar(int velAvanzar) {
    if (velAvanzar > 0) {
      this.velocidad = this.velocidad + velAvanzar;
      print("el vehiculo viaja a ${this.velocidad}");
      if (this.velocidad > 200) {
        print("El vehiculo pierde el control");
        print("EL vehiculo se sale de la via y cae monte abajo");
        print("Moriste");
        print("-" * 50);
      }
    } else {
      print("el valor a aumentar es invalido");
    }

    if (velAvanzar > 200) {
      print("El vehiculo pierde el control");
      print("EL vehiculo se sale de la via y cae monte abajo");
      print("Moriste");
      print("-" * 50);
    }
  }

//Metodo detenerse
  void detenerse() {
    velocidad = 0;
    print("el vehiculo se detuvo");
    print("-" * 50);
  }

  void carrobuum() {
    velocidad = 200;
    print("El vehiculo pierde el control");
    print("EL vehiculo se sale de la via y cae monte abajo");
    print("Moriste");
    print("-" * 50);
  }
}

void main(List<String> args) {
  Vehiculo miVehiculo1;
  miVehiculo1 = Vehiculo("negro", 30, 2.5);
  miVehiculo1.avanzar(50);
  miVehiculo1.avanzar(60);
  miVehiculo1.detenerse();

  Vehiculo miVehiculo2 = Vehiculo('azul', 80, 3.5);
  miVehiculo2.avanzar(20);
  miVehiculo2.avanzar(-30);
  miVehiculo2.detenerse();

  Vehiculo miVehiculo3 = Vehiculo("naranja", 10, 3.5);
  miVehiculo3.avanzar(110);
  miVehiculo3.avanzar(110);
}
