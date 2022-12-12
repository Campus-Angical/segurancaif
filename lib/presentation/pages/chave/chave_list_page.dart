import 'package:flutter/material.dart';
import 'package:segurancaif/domain/entities/sala.dart';
import 'package:segurancaif/presentation/controllers/chave/chave_list_ctrl.dart';
import 'package:segurancaif/presentation/pages/reserva/reserva_form_page.dart';
import 'package:segurancaif/presentation/widgets/my_drawer.dart';

class ChaveListPage extends StatefulWidget {
  final ChaveListCtrl controller = ChaveListCtrl();
  ChaveListPage({super.key});

  @override
  State<ChaveListPage> createState() => _ChaveListPageState();
}

class _ChaveListPageState extends State<ChaveListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 9, 114, 13),
        title: Text('Chaves'),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  
                  padding: EdgeInsets.all(5),
                  width: 150,
                  
                  child: ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        widget.controller.disponivel = null;
                      });
                    }),
                    child: Text('Todos'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          widget.controller.disponivel = true;
                        });
                      }),
                      child: Text('Disponiveis')),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          widget.controller.disponivel = false;
                        });
                      }),
                      child: Text('Indisponíveis')),
                ),
              ],
            ),
          ),
          FutureBuilder(
              future: widget.controller.search(),
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

                return Center(child: CircularProgressIndicator());
              }))
        ],
      ),
      backgroundColor: Colors.green,
    );
  }

  List<Widget> buildItensList(List<Sala> salas) {
    List<Widget> itens = [];
    for (Sala s in salas) {
      itens.add(ListTile(
        trailing: s.disponivel ? Icon(Icons.check_circle_outline_rounded) : Icon(Icons.cancel_outlined),
        title: Text(s.nome),
        onTap: () {},
      ));
    }
    return itens;
  }
}
