/*En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en
ella. El salario se obtiene de la sig. forma:
Si el obrero trabaja 40 horas o menos se le paga $20 por hora 
Si trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora
extra. */

import 'dart:io';

void main() {
  int numeroTrabajador = 1, cantidadTrabajadores, horas, horaExtra;
  double salario;
//entrada
  print("Escribe la cantidad de trabajadores:");
  cantidadTrabajadores = int.parse(stdin.readLineSync()!);

  while (numeroTrabajador <= cantidadTrabajadores) {
    print("Escribe las horas trabajadas por el trabajador $numeroTrabajador:");
    horas = int.parse(stdin.readLineSync()!);
//proceso

    if (horas <= 40) {
      salario = horas * 20;
    } else {
      horaExtra = horas - 40;
      salario = (40 * 20) + (horaExtra * 25);
    }
//salida
    print("El salario del trabajador $numeroTrabajador es: \$${salario.toStringAsFixed(2)}");
    numeroTrabajador++;
  }
}
