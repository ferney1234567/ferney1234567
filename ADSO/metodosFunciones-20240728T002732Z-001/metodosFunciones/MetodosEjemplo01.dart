

//metodos
void main(List<String> args) {
  String nombre = "luis";
  int edad = 10;
  String genero = "masculino";
  List<String> hobies = ["jugar", "leer", "ver peliculas"];

  saludarCompleto(nombre, edad, genero, hobies);
}

void saludarCompleto(String nombre, int edad, String genero, List<String> hobies) {
  print("Hola, soy $nombre y su genero es $genero");
  if (edad >= 18) {
    print("Usted es mayor de edad");
  } else {
    print("USTE ES MENOR DE EDAD");
    print("Sus hobbies son:");
    for (var i = 0; i < hobies.length; i++) {
      print("${i + 1} ${hobies[i]}");
    }
  }
}