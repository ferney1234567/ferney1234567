Algoritmo ejercicio_practica1
	Definir documento, tipo_documento, direccion, genero como Caracter
    Definir peso como Real
    Definir estrato como Entero
    Definir ha_estudiado_en_sena como Logico

	Escribir "Por favor, ingrese los datos del estudiante:"
    Escribir "Documento:"
    Leer documento
    Escribir "Tipo de documento:"
    Leer tipo_documento
    Escribir "Dirección de residencia:"
    Leer direccion
    Escribir "Género:"
    Leer genero
    Escribir "Peso (en kg):"
    Leer peso
    Escribir "Estrato:"
    Leer estrato
    Escribir "¿Ha estudiado en el SENA? ";
    Leer ha_estudiado_en_sena
	
    Escribir "Información del solicitante:"
    Escribir "Documento:", documento
    Escribir "Tipo de documento:", tipo_documento
    Escribir "Dirección de residencia:", direccion
    Escribir "Género:", genero
    Escribir "Peso:", peso, "kg"
    Escribir "Estrato:", estrato
    Si ha_estudiado_en_sena Entonces
        Escribir "Ha estudiado en el SENA"
    Sino
        Escribir "no ha  estudiado en el SENA: "
    FinSi
	
FinAlgoritmo
