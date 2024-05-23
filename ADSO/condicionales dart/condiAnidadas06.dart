/*El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año.
La manera de planificarlas depende de lo siguiente:
Si actualmente su capital se encuentra con saldo negativo, pedirá un préstamo bancario para que su
nuevo saldo sea de $1000000. Si su capital tiene actualmente un saldo positivo pedirá un préstamo
bancario para tener un nuevo saldo de $2000000, pero si su capital tiene actualmente un saldo
superior a los $2000000 no pedirá ningún préstamo. 
Posteriormente repartirá su presupuesto de la siguiente manera. 
• $500000 para equipo de computo
• $200000 para mobiliario
• y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos al personal.
Solicitar el capital y en base a este desplegar que cantidades se destinaran para la compra de insumos
e incentivos al personal y, en caso de que fuera necesario, a cuanto ascendería la cantidad que se
pediría al banco. */
import 'dart:io';

void main() {
  double saldo, saldoNuevo, prestamo, equipoComputo, mobiliario, insumos, incentivos;
//entrada
  print("Ingrese su saldo:");
  saldo = double.parse(stdin.readLineSync()!);
//proceso
  if (saldo < 0) {
    saldoNuevo = 1000000;
    prestamo = saldoNuevo - saldo;
  } else if (saldo <= 2000000) {
    saldoNuevo = 2000000;
    prestamo = saldoNuevo - saldo;
  } else {
    saldoNuevo = saldo;
    prestamo = 0;
  }

  equipoComputo = 500000;
  mobiliario = 200000;

  double restoPresupuesto = saldoNuevo - equipoComputo - mobiliario;
  insumos = restoPresupuesto / 2;  
  incentivos = restoPresupuesto / 2;  
//salida
  print("El nuevo saldo es de: $saldoNuevo");
  print("La suma total para Equipo de Computo es: $equipoComputo");
  print("La suma para el Mobiliario es: $mobiliario");
  print("Monto para Insumos: $insumos");
  print("Monto para Incentivos al Personal: $incentivos");
  print("Monto del préstamo solicitado: $prestamo");
}




 