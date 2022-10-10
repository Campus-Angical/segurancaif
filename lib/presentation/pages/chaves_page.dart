import 'package:flutter/material.dart';


class ChavesPage extends StatelessWidget {
  const ChavesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 114, 13),
        title: Text('Chaves'),
      ),
      drawer: Drawer(),
      body: Form(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Laboratorios"),
              subtitle: Text("INFO 01, INFO 02,INFO 03"),
              onTap: () {},
              
            ),
            ListTile(
              title: Text("Sala dos Professores"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Sala de Aula"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Biblioteca"),
              onTap: () {},  
            ),
            ListTile(
              title: Text("Secretaria"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

