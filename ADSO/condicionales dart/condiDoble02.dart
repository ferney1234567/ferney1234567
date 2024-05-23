/*Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
• Si trabaja 40 horas o menos se le paga $16 por hora
• Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora
extra*/
import 'dart:io';

void main() {

double horas , horasExtra,pago;
horasExtra=40;
//entrada
print("digite la cantidad de horas trabajadas");
horas = double.parse(stdin.readLineSync()!);
//proceso
if(horas > 40){
  horasExtra = horas - 40;
  pago= (40 *16) + (horasExtra * 20);
}else{
  pago = horasExtra * 16;
}//salida
print("el pago semanal por horas $horas horas trabajadas es $pago");
  
}