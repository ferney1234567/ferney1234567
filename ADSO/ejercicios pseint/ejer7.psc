Algoritmo sin_titulo	
	definir valorCompra, valorUni,cantidadProd,descuento como real;
	definir dia como cadena;
	
	escribir"cual es el valorUnitario ,la cantidad del Prododucto y el dia semanal";
	leer valorUni,cantidadProd,dia;
	
	valorCompra <- cantidadProd*valorUni;
	
	si( dia == "lunes")entonces
		descuento <- valorCompra*01;
		valorCompra <- valorCompra - descuento;
		escribir" obtubo el 10% del total del valor de compra y valor unitario";
	sino
		si( dia == "martes")entonces
			descuento <- valorCompra*03;
			valorCompra <- valorCompra - descuento;
			escribir" obtubo el 10% del total del valor de compra y valor unitario";
		sino
			
			si( dia == "miercoles"o dia=="jueves")entonces
				escribir" no hay descuento del valor de compra";
			sino
				si( dia == "sabado"o dia==domingo)entonces
					descuento<-valorCompra*04;
					valorCompra <- valorCompra - descuento;
					escribir" obtubo el 10% del total del valor de compra y valor unitario";
				sino
					escribir"le faltaron mas productos para descuentos";
				finsi
				
			finsi
			
		FinSi
		
	FinSi
FinAlgoritmo
