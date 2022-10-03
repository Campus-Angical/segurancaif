import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:segurancaif/presentation/controllers/home_ctrl.dart';

class HomePage extends GetWidget<HomeCtrl> {
  TextEditingController matriculaCtrl = TextEditingController();
  TextEditingController chaveCtrl = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 81, 10),
        title: Text('Segurança_IF'),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(245, 23, 5, 7),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: matriculaCtrl,
              decoration: const InputDecoration(
                  icon: Icon(Icons.person), hintText: 'Matricula:'),
            ),
            TextFormField(
              controller: chaveCtrl,
              decoration: const InputDecoration(
                  icon: Icon(Icons.key), hintText: 'Cod.Chave'),
            ),
            OutlinedButton(
                onPressed: (() {
                  controller.addReserva(matriculaCtrl.text, chaveCtrl.text);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Reserva Realizada com Sucesso!"),
                    backgroundColor: Colors.green,
                  ));
                }),
                child: Text('Confirmar')),
          ],
        ),
      ),
    );
  }
}
