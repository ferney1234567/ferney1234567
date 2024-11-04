import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Main());
  
}
  class Main extends StatelessWidget {
    const Main({super.key});
  
    @override
    Widget build(BuildContext context) {
       final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30),
         backgroundColor: const Color.fromARGB(255, 115, 197, 7),
         foregroundColor: const Color.fromARGB(255, 231, 217, 13));
         
        
      return MaterialApp(
       
      title : "Lenguajes de programacion",
        theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Column(
        children: [
          const Icon(Icons.ac_unit_rounded,
          color: Colors.black,
          size: 100),
          const Image(
          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          width: 200,
          height: 200,
              ),
          const Text("1.dart"),
          const Text("2.Java Script"),
          const Text("3.Java"),
          const Text("4.Python"),
          const Text("5.C++"),
          const Text("6.C"),
          const Image(
          image: NetworkImage('lib/images.jpg'),
          width: 200,
          height: 200,
              ),

          const Image(
          image: NetworkImage('https://images.griddo.universitatcarlemany.com/lenguajes-de-programacion-cuales-son-los-10-mas-utilizados'),
          width: 200,
          height: 200,
              ),
              
              

          

ElevatedButton(onPressed: (){},child: const Text('Enviar'), style:style,),
ElevatedButton(onPressed: (){}, child: const Text('Cancelar') ,style: style,),
OutlinedButton(onPressed: (){}, child: const Text('boton 2') ,style: style,),

        ],
      ),
      );
      
    }
  }