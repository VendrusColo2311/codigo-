import 'package:flutter/material.dart';

class PlanetListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Planetas'),
      ),
      body: Center(child: Text('Implementar lista de planetas aqui')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navegar para a tela de criação de planeta
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
