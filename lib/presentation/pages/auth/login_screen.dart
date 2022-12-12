import 'package:flutter/material.dart';

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
        color: Color.fromARGB(255, 9, 116, 9),
        child: ListView(
          children: <Widget>[
            SizedBox(
                width: 128,
                height: 128,
                child: Image.network(
                    "https://ci4.googleusercontent.com/proxy/bS_dZHp2rL0WtuAA7jT-m8aH3N0FuUyS_hK3jol5zLw51qrHaB-yOb6MlATQG6xEl9VZz1rGGnzX4FK7MmD517CUpAUe0lVKxyf5cp-qKiohFkd6A4HVa88QUxdAThJFe5DL1BDHNKWbD3PQ4jyyD5yQz-Brs0yp=s0-d-e1-ft#https://dynamic.brandcrowd.com/preview/logodraft/4fc95e6f-b793-4730-8ad7-3b1c9a3af432/image/large.png")),
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
                }),
                child: const Text('Conecte-se com Google')),
            ElevatedButton(
                onPressed: (() {
                  print('Conectado com Face');
                }),
                child: const Text('Continuar com Facebook'))
          ],
        ),
      ),
    );
  }
}
