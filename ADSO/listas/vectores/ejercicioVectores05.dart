/*Diseñe un algoritmo que lea un número cualquiera y lo busque en el vector X, el cual tiene
almacenados 12 elementos. Escribir la posición donde se encuentra almacenado el número en el
vector o el mensaje “NO” si no lo encuentra*/
import 'dart:io';

void main(List<String> args) {

  List<double> listaNumeros = [1, 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10 , 11 , 12];
  List<double> celda = [];
  double numero;
  bool encontrado = false;


  // Ciclo para llenar el vector
   print("Ingrese un número de la lista");
    numero = double.parse(stdin.readLineSync()!);
  for (int i = 0; i < listaNumeros.length; i++) {
   if(numero == listaNumeros[i]){
    print(numero);
    encontrado = true;
    print("se encontro el numero en la posicion $i");
   }
  }
  if (encontrado == false) {
    print("el numero no fue encontrado");
    
  }
  
}

 