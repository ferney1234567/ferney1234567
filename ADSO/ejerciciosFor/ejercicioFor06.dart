/*Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los
niños, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las
categorías con base en la sig, tabla
CATEGORIA EDAD
Niños 0 – 12
Jóvenes 13 - 29
Adultos 30 - 59
Adultos Mayores 60 en adelante
. Se debe solicitar la edad y el peso de cada persona y calcular y mostrar el promedio por categoría.*/
import 'dart:io';

void main(List<String> args) {

 int edad , peso;
  int numNinos = 0;
  int numJovenes = 0;
  int numAdultos = 0;
  int numAdultosMayores = 0;
  double pesoNinos = 0;
  double pesoJovenes = 0;
  double pesoAdultos = 0;
  double pesoAdultosMayores = 0;
  double promedioNinos ;
  double promedioJovenes ;
  double promedioAdultos ;
  double promedioAdultosMayores ;



  for (int i = 1; i < 5; i++) {
    print("Ingrese la edad de la persona $i ");
     edad = int.parse(stdin.readLineSync()!);

    print("Ingrese el peso de la persona $i ");
     peso = int.parse(stdin.readLineSync()!);

    if (edad >= 0 && edad <= 12) {
      numNinos++;
      pesoNinos = pesoNinos + peso;
    } else if (edad >= 13 && edad <= 29) {
      numJovenes++;
      pesoJovenes = pesoJovenes + peso;
    } else if (edad >= 30 && edad <= 59) {
      numAdultos++;
      pesoAdultos = pesoAdultosMayores + peso;
    } else {
      numAdultosMayores++;
      pesoAdultosMayores = pesoAdultosMayores + peso;
    }
  }

     promedioNinos = pesoNinos / numNinos;
     promedioJovenes = pesoJovenes / numJovenes;
     promedioAdultos = pesoAdultos / numAdultos;
     promedioAdultosMayores = pesoAdultosMayores /numAdultosMayores;
      promedioAdultosMayores=  pesoAdultosMayores / numAdultosMayores;

  print('Promedio de peso de niños: $promedioNinos');
  print('Promedio de peso de jóvenes: $promedioJovenes');
  print('Promedio de peso de adultos: $promedioAdultos');
  print('Promedio de peso de adultos mayores: $promedioAdultosMayores');
}

  
