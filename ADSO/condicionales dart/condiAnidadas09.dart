/*El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año
2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. Las
personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo
de menos de 25 años.
Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una
antigüedad en su empleo de 25 años o más. 
Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una
antigüedad en su empleo de 25 años o mas. 
Determinar en que tipo de jubilación, quedara adscrita una persona. */

import 'dart:io';

void main() {
  int edad, antiguedad;
  //entrada
  stdout.write('Ingresa tu edad: ');
  edad = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingresa tu antigüedad en años: ');
  antiguedad = int.parse(stdin.readLineSync()!);
//proceso
  if (edad >= 60 && antiguedad < 25) {
    print("Te corresponde una jubilación por edad");
  } else if (edad < 60 && antiguedad >= 25) {
    print("Te corresponde una jubilación por antigüedad joven");
  } else if (edad >= 60 && antiguedad >= 25) {
    print("le corresponde una jubilación por antigüedad adulta");
  } else {
    //salida
    print("no cumples con los requisitos para jubilarte");
  }
}




