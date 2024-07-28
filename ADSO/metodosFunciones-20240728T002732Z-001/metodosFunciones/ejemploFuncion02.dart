//realizar una funcion que reciba una lista de doubley un numero a buscar
//retornar true en caso de encontrarlo false en caso de no encontarlo 

void main(List<String> args) {
List<double> promedios = [2.2 , 3 ,5.2 , -34,8 ,14];

 double numEncontrar = 8;
 bool encontrado = buscarNumero(promedios, numEncontrar);
if (encontrado == true) {
  print("el numero  $numEncontrado fue encontrado");
}else{
  print("el numero no fue encontrado");
}

numEncontrar = 7;
if(buscarNumero(promedios , numEncontrar))