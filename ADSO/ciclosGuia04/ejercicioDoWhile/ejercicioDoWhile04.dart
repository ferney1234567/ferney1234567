/*Un censador recopila ciertos datos aplicando encuestas para el último Censo Nacional de Población
y Vivienda. Desea obtener de todas las personas que alcance a encuestar en un día, que porcentaje
tiene estudios de primaria, secundaria, carrera técnica, estudios profesionales y estudios de
posgrado.
El programa debe preguntar si se desea continuar ingresando datos*/

import 'dart:io';

void main() {
  int primaria = 0;
  int secundaria = 0;
  int tecnica = 0;
  int profesional = 0;
  int posgrado = 0;

  String contador = 'si';

  // entrada
  do {
    print('Ingrese el nivel educativo de la persona:');
    print('1 = primaria');
    print('2 = secundaria');
    print('3 = técnica');
    print('4 = profesional');
    print('5 = posgrado');
    String? nivelEducativo = stdin.readLineSync();

    // proceso
    if (nivelEducativo == '1') {
      primaria++;
    } else if (nivelEducativo == '2') {
      secundaria++;
    } else if (nivelEducativo == '3') {
      tecnica++;
    } else if (nivelEducativo == '4') {
      profesional++;
    } else if (nivelEducativo == '5') {
      posgrado++;
    } else {
      print('Nivel educativo no válido.');
    }

    print('Desea ingresar datos para otra persona? (si/no):');
    contador = stdin.readLineSync()!.toLowerCase();
  } while (contador == 'si');

  int totalPersonas = primaria + secundaria + tecnica + profesional + posgrado;
  if (totalPersonas > 0) {
    double porcentajePrimaria = primaria / totalPersonas * 100;
    double porcentajeSecundaria = secundaria / totalPersonas * 100;
    double porcentajeTecnica = tecnica / totalPersonas * 100;
    double porcentajeProfesional = profesional / totalPersonas * 100;
    double porcentajePosgrado = posgrado / totalPersonas * 100;

    // salida
    print('Personas con estudios de primaria: $primaria ($porcentajePrimaria%)');
    print('Personas con estudios de secundaria: $secundaria ($porcentajeSecundaria%)');
    print('Personas con estudios técnicos: $tecnica ($porcentajeTecnica%)');
    print('Personas con estudios profesionales: $profesional ($porcentajeProfesional%)');
    print('Personas con estudios de posgrado: $posgrado ($porcentajePosgrado%)');
  } else {
    print('No se ingresaron datos para calcular los porcentajes.');
  }
}

