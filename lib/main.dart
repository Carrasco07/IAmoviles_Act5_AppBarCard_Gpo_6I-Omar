import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() => runApp(AppMuebleria());

class AppMuebleria extends StatelessWidget {
  const AppMuebleria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muebleria',
      home: Empleado(),
    );
  }
}// Fin clase AppMuebleria

class Empleado extends StatelessWidget {
  const Empleado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Vendedor Omar Carrasco'),
        backgroundColor: Colors.blueGrey,
        actions: [
          Icon(Icons.bedroom_child),
          Icon(Icons.flight),
        ],
      ),
      drawer: Drawer(),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Card(
        color: const Color(0xFF263238), // Azul grisáceo oscuro
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                'https://raw.githubusercontent.com/Carrasco07/IAmoviles_Act5_AppBarCard_Gpo_6I/refs/heads/main/Omar.png',
              ),
            ),
            title: Text(
              'Omar Carrasco',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Gerente de Ventas',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    ],
  ),
)
    );
  }
}// Fin clase Empleado