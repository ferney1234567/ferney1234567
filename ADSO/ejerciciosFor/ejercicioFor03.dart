//Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.
import 'dart:io';

void main(List<String> args) {
 //definir
  int positivos = 0;
  int negativos = 0;
  int cero = 0;
  //entrada
  for (int i = 1; i <= 20; i++) {
    print("Ingresa el número $i:");
    int numero = int.parse(stdin.readLineSync()!);
    //proceso
    if(numero > 0) {
      positivos ++;
    } else if (numero < 0) {
      negativos ++;
    } else {
      cero ++;
    }
  }
//salida
  print("Total de números positivos: $positivos");
  print("Total de números negativos: $negativos");
  print("Total de ceros: $cero");
}
