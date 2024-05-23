/*El jefe del departamento de construcción de la constructora Pagasa, desea que se le desarrolle un
programa para sus empleados, el cual calcule el sueldo de un empleado, de tal manera que el sueldo
se calculará de la siguiente manera: si el número de horas trabajadas es mayor a 40, el excedente
de 40 hrs. se paga al doble de la cuota por hora, en caso de no ser mayor a 40 hrs. se paga la cuota
normal por hora, si las horas exceden a 50 hrs. el excedente de 50 hrs. se paga al triple de la cuota
por hora. Se pedirá el nombre del empleado, el número de horas trabajadas y la cuota por hora.
mostrar en pantalla el nombre del empleado, el número de horas trabajadas y su sueldo. */

import 'dart:io';

void main() {
  
	double sueldo,excedente,excedente2;
  int horaTrabajada , cuotaPorHora;
  String nombreEmpleado;
//entrada
  stdout.write('Ingrese el nombre del empleado: ');
  nombreEmpleado = stdin.readLineSync()!;
  
  stdout.write('Ingrese el número de horas trabajadas: ');
  horaTrabajada = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese la cuota por hora: ');
  cuotaPorHora = int.parse(stdin.readLineSync()!);

  sueldo=1000000;
//proceso
  if (horaTrabajada > 40 &&  horaTrabajada <= 50) {
			excedente = cuotaPorHora - 40;
			excedente = excedente * (cuotaPorHora*2);
			sueldo = 40 * cuotaPorHora + excedente;
		}else if(horaTrabajada > 50){
		
			excedente2 = horaTrabajada - 50;
			excedente2 = excedente2 * (cuotaPorHora * 3 );
			sueldo = 50 * cuotaPorHora + excedente2;
		}
   //salida
  print(' el Nombre del empleado es : $nombreEmpleado');
  print(' el Número de horas trabajadas es: $horaTrabajada');
  print(' el Sueldo del empleado es : $sueldo');

}