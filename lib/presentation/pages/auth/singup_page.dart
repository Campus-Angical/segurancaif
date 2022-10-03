

import 'package:flutter/material.dart';

class SingupPage extends StatelessWidget {
  const SingupPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 81, 10),
        title: Text('Cadastro')
        ),
      body: Form(
          child: Column(
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
                OutlinedButton(onPressed:  (() {}), child: Text('Criar')),
                Text('Ou'),
                OutlinedButton(onPressed:  (() {}), child: Text('Registra com Google')),
            ]),
        ),
    );
  }
}
