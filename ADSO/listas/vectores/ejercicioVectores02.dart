/*Llenar dos vectores A y B de 10 elementos cada uno, sumar el elemento uno del vector A con el
elemento uno del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e
imprimir el vector resultante.*/
import 'dart:io';


void main(List<String> args) {
    List<double> listaA = [];
  List<double> listaB= [];
   List<double> listaC= [];

  int cantidadNumeros = 10;
  double numero,sumaNumeros=0, numeroA, numeroB;

  //ciclo para llenar un vector
  for (int i = 0; i < cantidadNumeros; i++) {
    print("ingrese el numero A ${i + 1}"); //se agrega el elemento al vector-lista
    numeroA = double.parse(stdin.readLineSync()!);//se acumula la suma
    
     print("ingrese el numero A ${i + 1}"); //se agrega el elemento al vector-lista
    numeroB = double.parse(stdin.readLineSync()!);//se acumula la suma
   
    listaA.add(numeroA);
    listaB.add(numeroB);
  }
 
  //ciclo para recorrer el vector
   for (var i = 0; i < cantidadNumeros; i++) {
   sumaNumeros = listaA[i] +listaB[i];
   listaC.add(sumaNumeros);
}
//salida
print("la lista A es :${listaA}");
print("la lista B es $listaB");
print("la lista C es $listaC");

}
  
