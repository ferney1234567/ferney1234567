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

  // Matriz de producción por turno para cada artículo
  List<List<double>> matrizProduct = [
    [30, 40, 20],
    [10, 12, 15],
    [8, 10, 7],
    [25, 30, 30],
    [12, 20, 10],
  ];

  List<String> articulos = [];
  List<double> totalArticulos = [0, 0, 0, 0, 0];  // Total de producción por artículo
  List<double> totalTurnos = [0, 0, 0];  // Total de producción por turno
  double mayorArticulo = 0;  // Variable para almacenar el artículo con mayor producción
  String nombreMayorArt = '';  // Inicializamos la variable

  // Solicitar nombres de artículos y calcular producción por artículo y turno
  for (int i = 0; i < matrizProduct.length; i++) {
    print("Ingrese el nombre del artículo ${i + 1}: ");
    articulos.add(stdin.readLineSync()!);  // Guardamos el nombre del artículo

    // Sumar la producción por artículo y por turno
    for (int j = 0; j < matrizProduct[0].length; j++) {
      totalArticulos[i] += matrizProduct[i][j];
      totalTurnos[j] += matrizProduct[i][j];
    }
  }

  // Imprimir el total de producción por artículo
  print("Producción total por artículo:");
  for (int i = 0; i < totalArticulos.length; i++) {
    print("El total de ${articulos[i]} es de ${totalArticulos[i]} unidades.");
  }

  // Imprimir el total de producción por turno
  print("\nProducción total por turno:");
  for (int j = 0; j < totalTurnos.length; j++) {
    print("El turno ${j + 1} hizo una producción de ${totalTurnos[j]} unidades.");
  }

  // Determinar el artículo con mayor producción
  for (int i = 0; i < totalArticulos.length; i++) {
    if (totalArticulos[i] > mayorArticulo) {
      mayorArticulo = totalArticulos[i];
      nombreMayorArt = articulos[i];
    }
  }
  // Imprimir el artículo con mayor producción
  print('*' * 50);
  print("El artículo con mayor producción fue $nombreMayorArt con $mayorArticulo unidades.");
}
