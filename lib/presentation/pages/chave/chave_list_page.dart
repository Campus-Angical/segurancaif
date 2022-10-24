import 'package:flutter/material.dart';
import 'package:segurancaif/domain/entities/sala.dart';
import 'package:segurancaif/presentation/controllers/chave/chave_list_ctrl.dart';

class ChaveListPage extends StatelessWidget {
  ChaveListCtrl controller = ChaveListCtrl();
  ChaveListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 9, 114, 13),
          title: Text('Chaves'),
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            FutureBuilder(
                future: controller.search(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    return snapshot.data!.fold((failure) {
                      return Center(
                        child: Text('erro...'),
                      );
                    }, (salas) {
                      return Expanded(
                        child: ListView(
                          children: buildItensList(salas),
                        ),
                      );
                    });
                  }

                  return CircularProgressIndicator();
                }))
          ],
        ),
        );
  }

  List<Widget> buildItensList(List<Sala> salas) {
    List<Widget> itens = [];
    for (Sala s in salas) {
      itens.add(ListTile(
        title: Text(s.nome),
        onTap: () {},
      ));
    }
    return itens;
  }
}
