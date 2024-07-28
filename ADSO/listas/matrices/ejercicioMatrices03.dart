/*La compañía manufacturera Monte Real fábrica 5 artículos diferentes y se trabajan tres turnos por
día, la compañía necesita obtener un reporte al final del día del total de la producción por artículo y
el total de la producción por turno. Desarrollar un programa que pida al usuario el nombre de cada
artículo y la producción que se hizo en cada uno de los tres turnos del día y genere un reporte al final
del día mostrado en pantalla el total de de la producción por artículo, el total de la producción por
turno y el artículo con mayor producción.
Articulo \ Turno Turno 1 Turno 2 Turno 3
Articulo 1 30 40 20
Articulo 2 10 12 15
Articulo 3 8 10 7
Articulo 4 25 30 30
Articulo 5 12 20 10*/
import 'dart:io';

void main(List<String> args) {

 List<List<double>> matrizProduct = [
  [30,40,20],
   [10,12,15],
    [8,10,7],
     [25,30,30],
      [12,20,10],
 ];

 List<String> articulos = [];
 List<int>totalArticulos = [0,0,0,0,0];
  List<int>totalTurnos = [0,0,0];
  int mayorArticulo =0;
  String nombreMayorArt ;


 for (int  i = 0; i < matrizProduct.length; i++) {
  print("ingrese el nombre del articulo ${i +1} ");
 articulos.add(stdin.readLineSync()!);
 for (int j = 0; j < matrizProduct[0].length; j++) {
totalArticulos[i] += matrizProduct[i][j];
totalTurnos[j] += matrizProduct[i][j];
}
 }
 print(totalArticulos);
 for (int  i = 0; i < totalArticulos.length; i++) {
  print("el total de ${articulos[i]} es de ${totalArticulos[i]} ");
   
 }
 for (int  j = 0; j < totalTurnos.length; j++) {
  print("el turno ${i+1} hizo una produccion de  ${totalTurnos[i]} ");
}
for (int  i = 0; i < totalArticulos.length; i++) {
  if (totalArticulos[i] > mayorArticulo) {
    mayorArticulo = totalArticulos[i];
    nombreMayorArt = articulos[i];
  }
}
print('*' *50)
print("el articulo $nombreMayorArt mayor fue de $mayorArticulo unidades ");
}