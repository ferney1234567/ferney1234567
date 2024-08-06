class Leon {
 String color;
 double altura;
 int edad;
 String tipo_alimentacion; 

 Leon(this.color,this.altura, this.edad,this.tipo_alimentacion);

  void comer(){
    print('El felino ${this.color} ');
  }
  void dormir(){
    print('El felino ${this.altura} ');
  }
  void caminar(){
    print('El felino ${this.edad} ');
  }
  void correr(){
    print('El felino ${this.tipo_alimentacion}');
  }
   void mostrarInformacion(){
    print("El color  del felino es: ${this.color} tiene  una altura de:${this.altura} , tiene una edad de: ${this.edad} y tiene un tipo  de alimentacion de: ${this.tipo_alimentacion}");
   }
}

void main(List<String> args) {
Leon leon1;
  leon1 =Leon("cafe", 1.30, 5,"carne");
  leon1.caminar();
  leon1.comer();
  leon1.dormir();
  leon1.correr();
  leon1.mostrarInformacion();
  
}


