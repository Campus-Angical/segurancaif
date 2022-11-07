

import 'package:flutter/material.dart';

class SingupPage extends StatelessWidget {
  const SingupPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 8, 81, 10),
        title: const Text('Cadastro',
        style: TextStyle(
          fontSize: 30,
        ),
        ),
        ),
      body: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Nome:'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'E-mail:',
                  ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Senha:')
                  
                ),
                ElevatedButton(
                  onPressed: (() {
                  print('Conta criada');
                }), child: Text('Criar')),
                Text('Ou'),
                ElevatedButton(
                  onPressed: (() {
                  print('Registrado com sucesso');
                }), child: Text('Registrar com Google'))
            ]),
        ),
    );
  }
}
