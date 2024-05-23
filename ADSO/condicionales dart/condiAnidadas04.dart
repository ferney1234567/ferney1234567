/*En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha
promoción consiste en lo siguiente:
Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de
cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona
tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la
compra */

		import 'dart:io';

void main() {

  double llanta,cantidad,total;
		//entrada
		print("Cuantas llantas va a comprar");
		cantidad = double.parse(stdin.readLineSync()!);
		//proceso
		llanta = 0;
		total = 0;
		if (cantidad < 5) {
			llanta = 90000;
			total = cantidad * llanta;;
		}
		else if (cantidad >= 5 && cantidad <= 10) {
			llanta = 80000;
			total = cantidad * llanta;
		}
		else if (cantidad > 10) {
			llanta = 70000;
			total = cantidad * llanta;
		}
    //salida
		print("El precio de la llanta es: $llanta");
		print("El total a pagar es: $total");

}
