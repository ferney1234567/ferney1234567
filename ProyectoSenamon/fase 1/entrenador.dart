// entrenador.dart
import 'senamon.dart';
import 'dart:io';

class Entrenador {
  String nombre;
  String email;
  DateTime fechaNacimiento;
  int nivelExperiencia;
  int batallasGanadas;
  List<Senamon> senamones;

  Entrenador(this.nombre, this.email, this.fechaNacimiento, this.nivelExperiencia, this.batallasGanadas,) : senamones = [];

  void agregarSenamon(Senamon senamon) {
    if (senamones.length < 5) {
      senamones.add(senamon);
      print('${senamon.nombre} ha sido agregado al equipo de $nombre.');
      print("-------------------------------------------------------------------------");
    } else {
      print('Ya tienes 5 Senamones. Considera reemplazar uno.');
    }
  }

  void mostrarInfo() {
    print("--- Información del Entrenador ---");
    print("-----------------------------------------------------------------");
    print("Nombre: $nombre");
    print("Email: $email");
    print("Fecha de Nacimiento: ${fechaNacimiento.toLocal()}");
    print("Nivel de Experiencia: $nivelExperiencia");
    print("Batallas Ganadas: $batallasGanadas");
    print("Senamones:");
    print("-----------------------------------------------------------------");
    for (int i = 0; i < senamones.length; i++) {
      print('${i + 1}. ${senamones[i]}');
      print('------------------------------------------------------------------');
    }
  }
//-------------------------------------------------------------------------------
  void entrenarSenamones() {
    if (senamones.isEmpty) {
      print('No tienes Senamones para entrenar.');
      return;
    }

    print('--- Entrenamiento de Senamones ---');
    print('Tus Senamones:');
    for (int i = 0; i < senamones.length; i++) {
      print('${i + 1}. ${senamones[i]}');
    }

    stdout.write('Selecciona el número del Senamon que deseas entrenar: ');
    int? seleccion = int.tryParse(stdin.readLineSync()!);
    if (seleccion == null || seleccion < 1 || seleccion > senamones.length) {
      print('Selección inválida.');
      return;
    }

    Senamon senamonSeleccionado = senamones[seleccion - 1];

    print('¿Qué deseas mejorar?');
    print('1. Ataque');
    print('2. Salud');
    stdout.write('Ingresa 1 o 2: ');
    String? opcion = stdin.readLineSync();

    if (opcion != '1' && opcion != '2') {
      print('Opción inválida.');
      return;
    }

    print('Ingresa la cantidad de puntos que deseas aumentar: ');
    int? cantidad = int.tryParse(stdin.readLineSync()!);
    if (cantidad == null || cantidad <= 0) {
      print('Cantidad inválida.');
      return;
    }

    int costo = (cantidad ~/ 20) * 200;
    if (costo == 0) {
      print('La cantidad debe ser al menos 20 puntos para generar un costo de 200 XP.');
      return;
    }
    if (nivelExperiencia < costo) {
      print('No tienes suficientes puntos de experiencia. Necesitas $costo XP.');
      return;
    }
  
    if (opcion == '1') {
      senamonSeleccionado.aumentarAtaque(cantidad);
      print('${senamonSeleccionado.nombre} ha aumentado su ataque en $cantidad puntos.');
    } else {
      senamonSeleccionado.aumentarSalud(cantidad);
      print('${senamonSeleccionado.nombre} ha aumentado su salud en $cantidad puntos.');
    }

    // Restar los puntos de experiencia
    nivelExperiencia -= costo;
    print('Has gastado $costo puntos de experiencia. XP restante: $nivelExperiencia.');
  }
}
