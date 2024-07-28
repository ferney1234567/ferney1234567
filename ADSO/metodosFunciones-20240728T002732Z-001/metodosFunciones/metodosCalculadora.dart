import 'dart:io';

void main(List<String> args) {

int opcion;
  do {
    double num1, num2;
    print("********calculadora********");
    print("1. sumar");
     print("2. restar");
      print("3. multiplicar");
       print("4. dividir");
       opcion = int.parse(stdin.readLineSync()!);
       print("ingrese un numero");
       num1 = double.parse(stdin.readLineSync()!);
       print("ingrese el primer numero");
        num2 = double.parse(stdin.readLineSync()!);
       print("ingrese el segundo numero");
    switch (opcion) {
      case 1:
      sumar(){}
        break;
        case 2:
        restar(){
        }
        
        break;
        case 3:
        multiplicar(){
}
        break;
        case 4:
        dividir(){}
        break;
      default:
      print("opcion invalida");
    }
  } while (opcion != 5);
  }

  void sumar(double)
