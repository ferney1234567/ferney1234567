import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "informacion personal",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("informacion personal")),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('imj/imajen3.jpg'),
                radius: 100,
              ),
            ),
            Image( 
            image: NetworkImage('imj/images.jpg'),
            height: 200,
            ),
              Divider(color: Colors.black,),
          
            ListTile(
              title: Text('Ferney'),
              subtitle: Text('Nombre'),
              leading: Icon(Icons.person),
            ),
             Divider(color: Colors.black,),

           
            ListTile(
              title: Text('Arias franco'),
              subtitle: Text('Apellido'),
              leading: Icon(Icons.person_outlined), 
            ),
             Divider(color: Colors.black,),
             ListTile(
              title: Text('Calle 10A -34-35'),
              subtitle: Text('Direccion'),
              leading: Icon(Icons.ad_units_outlined),
            ),
             Divider(color: Colors.black,),
             ListTile(
              title: Text('3127024988'),
              subtitle: Text('Telefono'),
              leading: Icon(Icons.person_outlined), 
            ),
             Divider(color: Colors.black,),
             ListTile(
              title: Text('Ariasfrancoferney2@gmail.com'),
              subtitle: Text('Correo Electronico'),
              leading: Icon(Icons.add_circle_outline),
            ),
             Divider(color: Colors.black,),
          ],
        ),
      ),
    );
  }
}
