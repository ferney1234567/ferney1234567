void main(List<String> args) {
  List<int> vectNumeros = [2,  5 , 9 , 8 , 7 , 4  ,2];
  print(vectNumeros);

  //cambiar un elemento de un vector
  vectNumeros[2]= 1;
  print(vectNumeros);

//uso de lenght - add -- remove
  print("tamaño${vectNumeros.length}");

  //se adiciona un elemento a la lista
  vectNumeros.add(4);
  print("*" * 50);
  print(vectNumeros);
  print("tamaño ${vectNumeros.length}");


  //se remueve un elemento de la lista
  vectNumeros.remove(2);
  print("*" * 50);
  print(vectNumeros);
  print("tamaño ${vectNumeros.length}");

  //remueve el elemento segun su posicion
  vectNumeros.removeAt(2);
  print("*" * 50);
  print(vectNumeros);
  print("tamaño ${vectNumeros.length}");
}