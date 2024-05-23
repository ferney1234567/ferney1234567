/*Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los
reste y si no que los sume*/
import 'dart:io';

void main() {
  int numero1,numero2,resultado;
  //entrada
  stdout.write('Ingresa el primer número: ');
  numero1 = int.parse(stdin.readLineSync()!);

  stdout.write('Ingresa el segundo número: ');
  numero2 = int.parse(stdin.readLineSync()!);
//proceso
  if (numero1 == numero2) {
     resultado = numero1 * numero2;
    print('Los números son iguales  $resultado');
  } else if (numero1 > numero2) {
     resultado = numero1 - numero2;
    print('El primer número es mayor, su resta es: $resultado');
  } else {
    resultado = numero1 + numero2;
    //salida
    print('El segundo número es mayor, su suma es: $resultado');
  }
}

