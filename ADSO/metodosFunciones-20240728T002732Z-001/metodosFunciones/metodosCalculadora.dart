import 'dart:io';

void main(List<String> args) {
  int opcion;

  do {
    print("******** Calculadora ********");
    print("1. Sumar");
    print("2. Restar");
    print("3. Multiplicar");
    print("4. Dividir");
    print("5. Salir");
    print("Seleccione una opción: ");
    
    opcion = int.parse(stdin.readLineSync()!);

    if (opcion >= 1 && opcion <= 4) {
      print("Ingrese el primer número:");
      double num1 = double.parse(stdin.readLineSync()!);
      print("Ingrese el segundo número:");
      double num2 = double.parse(stdin.readLineSync()!);

      switch (opcion) {
        case 1:
          print("Resultado: ${sumar(num1, num2)}");
          break;
        case 2:
          print("Resultado: ${restar(num1, num2)}");
          break;
        case 3:
          print("Resultado: ${multiplicar(num1, num2)}");
          break;
        case 4:
          if (num2 != 0) {
            print("Resultado: ${dividir(num1, num2)}");
          } else {
            print("Error: No se puede dividir por cero.");
          }
          break;
      }
    } else if (opcion != 5) {
      print("Opción inválida. Por favor, intente de nuevo.");
    }

  } while (opcion != 5);

  print("¡Gracias por usar la calculadora!");
}

// Función para sumar
double sumar(double a, double b) {
  return a + b;
}

// Función para restar
double restar(double a, double b) {
  return a - b;
}

// Función para multiplicar
double multiplicar(double a, double b) {
  return a * b;
}

// Función para dividir
double dividir(double a, double b) {
  return a / b;
}
