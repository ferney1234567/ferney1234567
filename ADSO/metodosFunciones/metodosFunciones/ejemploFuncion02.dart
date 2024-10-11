//realizar una funcion que reciba una lista de doubley un numero a buscar
//retornar true en caso de encontrarlo false en caso de no encontarlo 
// Función que recibe una lista de doubles y un número a buscar


bool buscarNumero(List<double> lista, double numero) {
  // Iterar a través de la lista para buscar el número
  for (double elemento in lista) {
    if (elemento == numero) {
      return true; // Retorna true si se encuentra el número
    }
  }
  return false; // Retorna false si no se encuentra el número
}

void main(List<String> args) {
  List<double> promedios = [2.2, 3, 5.2, -34, 8, 14];

  double numEncontrar = 8;
  bool encontrado = buscarNumero(promedios, numEncontrar);
  if (encontrado == true) {
    print("El número $numEncontrar fue encontrado");
  } else {
    print("El número no fue encontrado");
  }

  numEncontrar = 7;
  encontrado = buscarNumero(promedios, numEncontrar); // Almacenar el resultado en `encontrado`
  if (encontrado) {
    print("El número $numEncontrar fue encontrado");
  } else {
    print("El número no fue encontrado");
  }
}
