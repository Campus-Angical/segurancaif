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
        color: const Color.fromARGB(255, 255, 253, 253),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.network("https://viciados.net/wp-content/uploads/2020/11/treinamento-em-seguranca-da-informacao.jpg"),
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
                  color: Colors.black38,
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
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),   
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: const Text(
                "Recuperar Senha",
                textAlign: TextAlign.right,                
                ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3,1],
                  colors: [
                       Color.fromARGB(15, 13, 9, 6),
                       Color.fromARGB(15, 13, 9, 6),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5)
                  ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}