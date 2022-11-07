
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Color.fromARGB(255, 239, 244, 239),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("asset:images/1801293.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Color.fromARGB(157, 0, 0, 0),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ), 
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                
                icon: Icon(Icons.lock),
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Color.fromARGB(157, 0, 0, 0),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                  onPressed: (() {
                  print('Conectado');
                }), child: const Text('Conecte-se com Google')),
                ElevatedButton(
                  onPressed: (() {
                  print('Conectado com Face');
                }), child: const Text('Continuar com Facebook'))
             ],
           ),
         ),
     );
  }
}