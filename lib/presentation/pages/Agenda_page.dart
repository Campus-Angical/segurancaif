import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AgendPage extends StatelessWidget {
  const AgendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 114, 13),
        title: Text('Agendamento'),
      ),
      drawer: Drawer(),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.person), hintText: 'Matricula:'),
            ),
            
      ]),
    ),
    );
  }
}
