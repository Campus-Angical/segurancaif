
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
              child: Image.network("https://img2.gratispng.com/20180427/sqq/kisspng-computer-icons-avatar-sea-captain-captain-vector-5ae37fd2f21d42.9439048515248588349917.jpg"),
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
                  print('Conectado');
                }), child: const Text('Continuar com Facebook'))
             ],
           ),
         ),
     );
  }
}