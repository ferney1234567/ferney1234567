Algoritmo ejercicio19
	
	//Un vendedor recibe un sueldo base de $500000 m�s un 10% extra por comisi�n
//	de sus ventas, el vendedor desea saber cu�nto dinero obtendr� por concepto de
	//comisiones por las tres ventas que realiza en el mes y el total que recibir� en el
//	mes tomando en cuenta su sueldo base y comisiones.
	//Decir al final cu�nto gana el vendedor al a�o
		Definir sueldo_base, venta_1, venta_2, venta_3 Como Real
		
		sueldo_base <- 500000
		venta_1 <- valor_de_venta_1
		venta_2 <- valor_de_venta_2
		venta_3 <- valor_de_venta_3
		
		comision_total <- (venta_1 + venta_2 + venta_3) * 10
		total_mes <- sueldo_base + comision_total
		
		Escribir "Total de comisiones del mes: ", comision_total
		Escribir "Salario total del mes: ", total_mes
		Escribir "Salario anual del vendedor: ", total_mes 
FinAlgoritmo


