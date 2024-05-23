/*Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un medico
determina si una persona esta normal, tiene anemia o tiene cardiopatía  lo cual depende de su nivel
de hemoglobina en la sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una
persona es menor que el rango que le corresponde, se determina su resultado como Anemia, si esta
dentro del rango, se determina su resultado como Normal y si esta por encima del rango, se determina
su resultado como Cardiopatía. La tabla en la que el medico se basa para obtener el resultado es la
siguiente: 
 
EDAD 
NIVEL HEMOGLOBINA 
0 - 1 mes 
13 - 26 g% 
> 1 y < = 6 meses 
10 - 18 g% 
> 6 y < = 12 meses 
11 - 15 g% 
> 1 y < = 5 años 
11.5 - 15 g% 
> 5 y < = 10 años 
12.6 - 15.5 g% 
> 10 y < = 15 años 
 
13 - 15.5 g% 
mujeres > 15 años 
12 - 16 g% 
hombres > 15 años 
 
14 - 18 g%*/

import 'dart:io';

void main() {
  String resultado = "";
  int edadPersona, generoPersona;
  double hemoglobina;
//entrada
  print("La persona es mayor a 1 año: si(1) no (0)");
  int edad = int.parse(stdin.readLineSync() !);

  if (edad == 0) {
    print("Ingrese los meses de la persona");
    edadPersona = int.parse(stdin.readLineSync()!);

    print("Ingrese el nivel de hemoglobina");
    hemoglobina = double.parse(stdin.readLineSync()!);
//proceso
    if (edadPersona <= 1) {
      if (hemoglobina < 13) {
        resultado = "Anemia";
      } else if (hemoglobina >= 13 && hemoglobina <= 26) {
        resultado = "Normal";
      } else if (hemoglobina > 26) {
        resultado = "Cardiopatia";
      }
    } else if (edadPersona > 1 && edadPersona <= 6) {
      if (hemoglobina < 10) {
        resultado = "Anemia";
      } else if (hemoglobina >= 10 && hemoglobina <= 18) {
        resultado = "Normal";
      } else if (hemoglobina > 18) {
        resultado = "Cardiopatia";
      }
    } else if (edadPersona > 6 && edadPersona <= 12) {
      if (hemoglobina < 11) {
        resultado = "Anemia";
      } else if (hemoglobina >= 11 && hemoglobina <= 15) {
        resultado = "Normal";
      } else if (hemoglobina > 15) {
        resultado = "Cardiopatia";
      }
    }
  } else if (edad == 1) {
    print("Ingrese los años de la persona");
    edadPersona = int.parse(stdin.readLineSync()!);

    print("Ingrese el nivel de hemoglobina");
    hemoglobina = double.parse(stdin.readLineSync()!);

    if (edadPersona > 1 && edadPersona <= 5) {
      if (hemoglobina < 11.5) {
        resultado = "Anemia";
      } else if (hemoglobina >= 11.5 && hemoglobina <= 15) {
        resultado = "Normal";
      } else if (hemoglobina > 15) {
        resultado = "Cardiopatia";
      }
    } else if (edadPersona > 5 && edadPersona <= 10) {
      if (hemoglobina < 12.6) {
        resultado = "Anemia";
      } else if (hemoglobina >= 12.6 && hemoglobina <= 15.5) {
        resultado = "Normal";
      } else if (hemoglobina > 15.5) {
        resultado = "Cardiopatia";
      }
    } else if (edadPersona > 10 && edadPersona <= 15) {
      if (hemoglobina < 13) {
        resultado = "Anemia";
      } else if (hemoglobina >= 13 && hemoglobina <= 15.5) {
        resultado = "Normal";
      } else if (hemoglobina > 15.5) {
        resultado = "Cardiopatia";
      }
    } else if (edadPersona > 15) {
      print("Ingrese (0) si es hombre o ingrese (1) si es mujer");
      generoPersona = int.parse(stdin.readLineSync()!);

      if (generoPersona == 0) {
        if (hemoglobina < 14) {
          resultado = "Anemia";
        } else if (hemoglobina >= 14 && hemoglobina <= 18) {
          resultado = "Normal";
        } else if (hemoglobina > 18) {
          resultado = "Cardiopatia";
        }
      } else if (generoPersona == 1) {
        if (hemoglobina < 12) {
          resultado = "Anemia";
        } else if (hemoglobina >= 12 && hemoglobina <= 16) {
          resultado = "Normal";
        } else if (hemoglobina > 16) {
          resultado = "Cardiopatia";
        }
      }
    }
  }
//salida
  print("El resultado del paciente es: $resultado");
}
