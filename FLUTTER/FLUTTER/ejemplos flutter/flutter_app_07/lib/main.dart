import 'package:flutter/material.dart';

void main(List<String> args) {
  
}


class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turismos',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Grillas')),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.orange,
          child: GridView.count(
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children:  const [
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              Card(
                child:Column(
                children: [
                  Text("Tarjeta 1"),
                  Icon(Icons.abc),
                   Text("texto1")
                ],
                
              ),
              ),
              
              
            ],
          ),
        ),
      )
    );
  }}