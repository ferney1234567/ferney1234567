
/*Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene.
Es necesario tener en cuenta si es año bisiesto o no. */

import 'dart:io';

void main() {
  int ano;
  int mes;
  //entrada

  print("Digite un mes (1-12):");
  mes = int.parse(stdin.readLineSync()!);

  print("Digite un año:");
  ano = int.parse(stdin.readLineSync()!);
//proceso
  bool esBisiesto = (ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0);


  int diasEnMes;
  switch (mes) {
    case 1: // Enero
    case 3: // Marzo
    case 5: // Mayo
    case 7: // Julio
    case 8: // Agosto
    case 10: // Octubre
    case 12: // Diciembre
      diasEnMes = 31;
      break;
    case 4: // Abril
    case 6: // Junio
    case 9: // Septiembre
    case 11: // Noviembre
      diasEnMes = 30;
      break;
    case 2: // Febrero
      diasEnMes = esBisiesto ? 29 : 28;
      break;
    default:
      print("Mes inválido. Debe ser un número entre 1 y 12.");
      return;
  }
//salida
  print("El mes $mes del año $ano tiene $diasEnMes días.");
}
