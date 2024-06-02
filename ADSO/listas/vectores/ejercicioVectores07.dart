void main(List<String> args) {
  String ? palabra = "AnitaLavaLAtina";
  palabra = palabra.toLowerCase();
  List<String> listaPalabra = [];
  List<String> listaInvertida = [];

  for (var i = 0; i < palabra.length; i++) {
    listaPalabra.add(palabra[i]);

    listaInvertida = listaPalabra.reversed.toList();
    if (listaInvertida.toString()==listaPalabra.toString()) {
      print("la palabra $palabra es palindroma");
    }else{
      print("no es palindroma");
    }
      
    }
    
  }
  

