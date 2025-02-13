import 'package:flutter/material.dart';

class PlanetForm extends StatefulWidget {
  @override
  _PlanetFormState createState() => _PlanetFormState();
}

class _PlanetFormState extends State<PlanetForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  double _distance = 0.0;
  double _size = 0.0;
  String _nickname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Planeta'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome do Planeta'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome do planeta';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              // Campos para distância, tamanho e apelido aqui
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Salvar planeta no banco de dados
                  }
                },
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
