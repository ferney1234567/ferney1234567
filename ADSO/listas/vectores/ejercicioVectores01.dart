/*Calcular el promedio de 50 valores almacenados en un vector. Determinar además cuantos son
mayores que el promedio, imprimir el promedio, el número de datos mayores que el promedio y una
lista de valores mayores que el promedio.*/
import 'dart:io';

void main(List<String> args) {

  List<double> numeros = [];
  List<double> mayoresPromedio = [];

  int cantidadNumeros = 20;
  double numero, promedio,sumaNumeros=0;

  //ciclo para llenar un vector
  for (int i = 0; i < cantidadNumeros; i++) {
    print("ingrese el numero ${i + 1}"); //se agrega el elemento al vector-lista
    numero = double.parse(stdin.readLineSync()!);//se acumula la suma
    numeros.add(numero);
    sumaNumeros += numeros[i];
  }
  promedio = sumaNumeros / cantidadNumeros;
  //ciclo para recorrer el vector
   for (var i = 0; i < cantidadNumeros; i++) {
    if (numeros[i] > promedio) {
      mayoresPromedio.add(numeros[i]);     
    }
}
//salida
print("el promedio es:");
print("la cantidad numeros mayores a promedio ess ${mayoresPromedio.length}");
print("la lista de mayores al promedio es $mayoresPromedio");
}