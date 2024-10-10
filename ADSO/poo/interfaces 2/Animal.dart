abstract class Animal {
  double peso;
  String sexo;
  String especie;

  Animal(this.especie,this.peso,this.sexo);
  void hacerSonido(){
    print("El animal hace sonido");
  } 
  void comer(){
  print("el animal come");
}

}

