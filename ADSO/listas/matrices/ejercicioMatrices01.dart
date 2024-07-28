import 'dart:io';

/*rreglos Bidimensionales
1. Hacer un algoritmo que almacene números en una matriz de 5 * 6. Imprimir la suma de los números
almacenados en la matriz*/

void main(List<String> args) {
   List<List<double>> matriz =[];
   int cantFilas = 5, cantidadColyumnas = 6;
   double  suma = 0;


   for (int i = 0; i < cantFilas; i++) {
    List<double> fila =[];
    for (int j = 0; j < cantidadColyumnas; j++) {
      print("ingrese el numero de la posicion  $i , $j");
    fila.add(double.parse(stdin.readLineSync()!));
      
    }
    matriz.add(fila); 
   }
   //recorrerlo y hacer la suma
    for (int i = 0; i < matriz.length; i++) {
      for (int j = 0; j < matriz[0].length; j++) {
        suma += matriz[i][j];
        stdout.write("|");
        stdout.write(matriz[i][j]);



      }
      print("|");

}
//salida
      print("la suma de los numeros de la matriz es $suma");
}