/*El Depto. de Seguridad Publica y Transito del D.F. desea saber, de los n autos que entran a la ciudad
de México, cuantos entran con calcomanía de cada color. Conociendo el último dígito de la placa de
cada automóvil se puede determinar el color de la calcomanía utilizando la sig. relación:
DÍGITO  COLOR 
1 o 2  
amarilla 

3 o 4  
rosada 

5 o 6  
roja 

7 o 8 
verde 
 
9 o 0  
azul */
import 'dart:io';

void main() {
  int cantidadAutos, ultimoDigito, amarilla = 0, rosa = 0, roja = 0, verde = 0, azul = 0;
//entrada
  stdout.write("Ingresa la cantidad de autos: ");
  cantidadAutos = int.parse(stdin.readLineSync()!);

  while (cantidadAutos > 0) {
    stdout.write("Ingresa el último dígito de la placa: ");
    ultimoDigito = int.parse(stdin.readLineSync()!);
//proceso
    if (ultimoDigito == 1 || ultimoDigito == 2) {
      amarilla++;
    } else if (ultimoDigito == 3 || ultimoDigito == 4) {
      rosa++;
    } else if (ultimoDigito == 5 || ultimoDigito == 6) {
      roja++;
    } else if (ultimoDigito == 7 || ultimoDigito == 8) {
      verde++;
    } else if (ultimoDigito == 9 || ultimoDigito == 0) {
      azul++;
    } else {
      print("Ingresa un dígito correcto");
      cantidadAutos++;
    }

    cantidadAutos--;
  }
  //salida
  print("Calcomanía amarilla: $amarilla");
  print("Calcomanía rosa: $rosa");
  print("Calcomanía roja: $roja");
  print("Calcomanía verde: $verde");
  print("Calcomanía azul: $azul");
}
