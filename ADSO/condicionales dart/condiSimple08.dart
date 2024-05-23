/*Dada la duración en minutos de una llamada calcular el costo, considerando:
• Hasta tres minutos el costo es 600
• Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros*/

import 'dart:io';

void main() {
double duracionMinutos,costo;
//entrada
costo =0;
print("ingrese el valor de duracion en minutos");
duracionMinutos = double.parse(stdin.readLineSync()!);
//proceso
costo  = 600 * duracionMinutos;

if(duracionMinutos > 3){
  costo = costo+(duracionMinutos -3)+150;
}
//salida
print("el valor de costos es de $costo");
}
