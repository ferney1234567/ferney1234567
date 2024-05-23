/*En la Cámara de Diputados se levanta una encuesta con todos los integrantes con el fin de determinar
que porcentaje de los n diputados esta a favor del Tratado de Libre Comercio, que porcentaje esta en
contra y que porcentaje se abstiene de opinar.
El programa debe preguntar si se desea continuar ingresando datos*/
  import 'dart:io';
import 'dart:io';

void main() {
  int aFavor = 0;
  int enContra = 0;
  int abstenciones = 0;
  int totalDiputados = 0;

  bool contador = true;

  // entrada
  do {
    print("Ingrese el voto del diputado (a favor, en contra, abstencion): ");
    String voto = stdin.readLineSync()!.toLowerCase();

    // proceso
    // Contar votos
    if (voto == "a favor") {
      aFavor++;
    } else if (voto == "en contra") {
      enContra++;
    } else if (voto == "abstencion") {
      abstenciones++;
    } else {
      print("Voto no válido. Ingrese a favor, en contra o abstencion.");
      totalDiputados--; 
    }

    totalDiputados++;

    print("¿Desea continuar ingresando datos? (si/no): ");
    String respuesta = stdin.readLineSync()!;
    contador = respuesta == "si";

  } while (contador);

  double porcentajeFavor = (aFavor / totalDiputados) * 100;
  double porcentajeContra = (enContra / totalDiputados) * 100;
  double porcentajeAbstenciones = (abstenciones / totalDiputados) * 100;

  // salida
  print("A favor: $porcentajeFavor%");
  print("En contra: $porcentajeContra%");
  print("Abstenciones: $porcentajeAbstenciones%");
}
