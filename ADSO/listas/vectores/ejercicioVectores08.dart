//Consultar el método de ordenación por burbuja y ordenar un arreglo entero de 10 elementos

void main() {
  List<int> numeros = [12, 4, 25, 6, 15, 2];

  for (int i = 0; i < numeros.length - 1; i++) {
    for (int j = 0; j < numeros.length - i - 1; j++) {
      
      if (numeros[j] > numeros[j + 1]) {
        int temp = numeros[j];
        numeros[j] = numeros[j + 1];
        numeros[j + 1] = temp;
      }
    }
  }

  print("Arreglo ordenado: $numeros");
}

