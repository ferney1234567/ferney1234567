/*Calcular la suma siguiente:
 
100 + 98 + 96 + 94 + . . . + 0 en este orden*/
void main() {
  int numero, suma;
//entrada
  numero = 100;
  suma = 0;
//proceso
  do {
    suma = suma + numero;

    numero = numero - 2;
  } while (numero >= 0);
//salida
  print('La suma de los números es: $suma');
}
