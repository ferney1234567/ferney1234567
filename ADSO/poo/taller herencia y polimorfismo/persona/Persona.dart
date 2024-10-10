class Persona {
  String _nombre;
  int _edad;

  Persona(this._nombre, this._edad);

  void setNombre(String nom){
     this._nombre = nom;
  }

  String getNombre(){
  return _nombre;
}

  void setEdad(int Edad){
     this._edad = Edad;
}

  int getEdad(){
  return _edad;
}

 void caminar(){
  print(' la persona esta caminando');
 }
}