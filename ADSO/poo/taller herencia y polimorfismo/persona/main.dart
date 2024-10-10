import 'dart:io';
import 'Persona.dart';
import 'Programador.dart';
import 'Futbolista.dart';

void main(List<String> args) {

int eleccion1;

do {
  print("es 1 para futbolistas y 2 para programador");
  eleccion1 = int.parse(stdin.readLineSync()!);
  } while (eleccion1 == 1 && eleccion1 ==2);
  switch (eleccion1) {
    case 1:
    print("ingrese el nombre del futbolista");  
    String nombre = stdin.readLineSync()!;
    print("ingrese la edad del futbolista");
    int edad = int.parse(stdin.readLineSync()!);
    print("ingrese el equipo del futbolista");
    String equipo = stdin.readLineSync()!;
    print("ingrese la posicion");
    String posicion = stdin.readLineSync()!;
    print("ingrese la cantidad de goles");
    int goles = int.parse(stdin.readLineSync()!);
    
    Futbolista futbolista = Futbolista(nombre, edad, equipo,posicion,goles);
    print(futbolista);
    futbolista.correr();
    futbolista.hacerPase();
    futbolista.mostrarInformacion();
      break;
      case 2:
      print("ingrese el nombre del programador");
      String nombre = stdin.readLineSync()!;
      print("ingrese la edad del programador");
      int edad = int.parse(stdin.readLineSync()!) ;
      print("ingrese la empresa");
      String empresa = stdin.readLineSync()!;
      print("ingrese el salario del programador");
      double salario = double.parse(stdin.readLineSync()!);

      Programador programador =Programador(nombre, edad,empresa,salario);
      print(programador);

      programador.estaProgramando();
      programador.codificando();
    
      
 
    default:
    print("no hay opciones");
  }

}

