import 'package:flutter/material.dart';


class HistoriPage extends StatelessWidget {
  const HistoriPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        leading: Icon(Icons.west_sharp),
        title: Text("Historico",
        style: TextStyle(
          fontSize: 30,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:Form(
        child: ListView(
          children: <Widget>[
             ListTile(
            title: Text("Salas Disponiveis"),
            leading: Icon(Icons.control_point_sharp),
            onTap: () {},
             ),
             ListTile(
            title: Text("Salas Indisponiveis"),
            leading: Icon(Icons.control_point_sharp),
            onTap: () {},
            ),
          ],
        ),
      ),
    ); 
  }
}