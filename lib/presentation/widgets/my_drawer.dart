import 'package:flutter/material.dart';
import 'package:segurancaif/presentation/pages/chave/chave_list_page.dart';
import 'package:segurancaif/presentation/pages/reserva/reserva_form_page.dart';
import 'package:segurancaif/presentation/pages/reserva/reserva_list_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromARGB(245, 112, 255, 109),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Chaves"),
                onTap: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: ((context) => ChaveListPage())));
                  debugPrint('toquei no drawer');
            }),
            ListTile(
              title: Text("Agendamento"),
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: ((context) => ReservaListPage())));
                debugPrint('toquei no drawer');
            }),
          ],
        ),
      );
  }
}