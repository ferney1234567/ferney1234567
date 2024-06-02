void main(List<String> args) {
  List<int> vectorA = [1,3,5,7,8];
   List<int> vectorB = [2,4,6,8,10];
    List<int> vectorInversoB = [] ;
     List<int> vectorC = [];
   int resultado;

   print("Lista B -elementos inversos");
   for (var i = 0; i < vectorB.length -1; i>= 0, i--) {
    vectorInversoB.add(vectorB[i]);
     
   }
    for (var i = 0; i < vectorB.length ; i++) {
      resultado = vectorA[i] * vectorInversoB[i];
       vectorC.add(resultado);
    }
   

}