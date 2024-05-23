/*El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la
superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera: 
 
Porcentaje de la superficie del bosque Tipo de árbol 
70% 
Pino 
20% 
Roble 
10% 
Cedro 
Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la
sig. manera: 
a: 
Porcentaje de la superficie del bosque Tipo de árbol 
50% 
Pino 
30% 
Roble 
20% 
Cedro 
 
El gobierno desea saber el numero de pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe
que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados
caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados. 
*/

import 'dart:io';

void main() {
  int hectareas, metros;
  double pino, roble, cedro;
//entrada
  print("Ingrese el número de hectáreas del bosque:");
  hectareas = int.parse(stdin.readLineSync()!);
//proceso
  metros = hectareas * 10000;

  if (metros > 1000000) {
    pino = 0.70 * metros / 10 * 8; 
    roble = 0.20 * metros / 15 * 15; 
    cedro = 0.10 * metros / 18 * 10; 
  } else {
    pino = 0.50 * metros / 10 * 8; 
    roble = 0.30 * metros / 15 * 15; 
    cedro = 0.20 * metros / 18 * 10; 
  }
  //salida
  print("Número de pinos a sembrar: $pino");
  print("Número de robles a sembrar: $roble");
  print("Número de cedros a sembrar: $cedro.");
}
