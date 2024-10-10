//-------------------------------------------------------------------------
class Animal {
  double peso;
  String sexo;
  String especie;

  Animal(this.especie,this.peso,this.sexo);
  void hacerSonido(){
    print("El animal hace sonido");
  } 
}
//----------------------------------------------------------------------
//la clase perro  hereda de animal
class Perro extends Animal {
  String  raza;
  Perro(this.raza) : super("canino",10,"hembra");
  @override
  void hacerSonido(){
    print("El perro ladra");
  }
  void mostrarInformacion(){
    print(""" especie $especie
    peso $peso
    sexo $sexo
    raza $raza
""");
  }
}
//-------------------------------------------------------------------------
void main(List<String> args) {
  Perro miperro = Perro("criollo");
  miperro.hacerSonido();
  miperro.mostrarInformacion();
}
//-------------------------------------------------------------------------