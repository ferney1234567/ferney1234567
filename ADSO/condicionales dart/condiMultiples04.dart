/*-Calcular el valor de f(x) según la expresión
          f(x)
x ^ 2       |  Si x mod 4 = 0
x / 6       |  Si x mod 4 = 1
Raiz(x)     |  Si x mod 4 = 2
X ^ 3 + 5   |  Si x mod 4 = 3 */

import 'dart:io';
import 'dart:math';

void main() {
  double numero, operacion, caso;
//entrada
  print("digite un numero");
  numero = double.parse(stdin.readLineSync()!);
//proceso
  operacion = numero % 4;

  if (operacion < 0 || operacion > 3) {
    print("no se hallo exprecion");
  } else {
    switch (operacion) {
      case 0:
        caso = pow(numero, 2).toDouble();
        print("el valor de F(x) segun la expresion (x ^ 2) es: $caso");
        break;
      case 1:
        caso = numero / 6;
        print("el valor de F(x) segun la expresion (x / 2) es: $caso");
        break;
      case 2:
        caso = sqrt(numero).toDouble();
        print("el valor de F(x) segun la expresion (RAIZ(x)) es: $caso");
        break;
      case 3:
        caso = pow(numero, 3).toDouble() + 5;
        print("el valor de F(x) segun la expresion (x ^ 3 + 5) es: $caso");
        break;
      default:
      //salida
        print("no se hallo exprecion");
    }
  }
}
