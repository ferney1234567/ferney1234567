//como asignar  y mostrar los elementos de un vector
//segun llos datos ingresados por el usuario

import 'dart:io';

void main(List<String> args) {

  int num;
   List<int> vectNumeros = [];

//ciclo para llenar y asignar una lista
   for(int i=0; i < 10; i++){
    print("ingrese el numero 1 ${i + 1}");

    //se asigna un elemento a la  posicion
    num = int.parse(stdin.readLineSync()!);
    vectNumeros.add(num);

}
print(vectNumeros);


//ciclo para recorre mostrar la lista
 for(int i=0; i < 10; i++){
    print("numero ${i + 1} ${vectNumeros[i]} ");

 }
}

