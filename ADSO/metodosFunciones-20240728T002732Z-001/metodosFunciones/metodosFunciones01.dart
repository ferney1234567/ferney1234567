void main(List<String> args) {
  int a , b ,c ;
  print("hola mundo");
 saludar("ana" , "m");
 saludar("jeimy", "m");
 saludar("juan" ,"h");
 saludar("mario" ,"h");
  sumar(5,3);
  sumar(10 ,4);
  sumar(7 ,2);

 /* a = 5;
  b =3;
  c= a + b;

  print("suma $c");

   a=5;
  b = 3;
  c= a + b;
  print("suma $c");

 a=5;
  b =3;
  c= a + b;
  print("suma $c"); */


}

void sumar(int a, int b){
  int c;
  c = a + b;
  print("suma $c");
  
}
void saludar(String nombre , String genero){
  if (genero == "h") {
    print("hola querido $nombre");
  }else{
    print("hola querida $nombre");
  }
}