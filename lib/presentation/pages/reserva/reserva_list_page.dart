import 'package:flutter/material.dart';
import 'package:segurancaif/domain/entities/reserva.dart';
import 'package:segurancaif/presentation/controllers/reserva/reserva_list_ctrl.dart';
import 'package:segurancaif/presentation/pages/reserva/reserva_form_page.dart';
import 'package:segurancaif/presentation/widgets/my_drawer.dart';

class ReservaListPage extends StatefulWidget {
  final ReservaListCtrl controller = ReservaListCtrl();
  ReservaListPage({super.key});

  @override
  State<ReservaListPage> createState() => _ReservaListPageState();
}

class _ReservaListPageState extends State<ReservaListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 9, 114, 13),
        title: Text('Listagem'),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          FutureBuilder(
              future: widget.controller.search(),
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  return snapshot.data!.fold((failure) {
                    return Center(
                      child: Text('erro...'),
                    );
                  }, (reservas) {
                    return Expanded(
                      child: ListView(
                        children: buildItensList(reservas),
                      ),
                    );
                  });
                }
                return Center(child: CircularProgressIndicator());
              }))
        ],
       
      ),
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: (() {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => ReservaFormPage()))).then((value) {
                setState(() {
                  widget.controller.search();
                });
              });
        }),
      ),
    );
  }
  List<Widget> buildItensList(List<Reserva> reservas) {
    List<Widget> itens = [];
    for (Reserva r in reservas) {
      itens.add(Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sala',
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(r.sala.chave)
            ],
          ),
        ),
      ));
    }
    return itens;
  }
}