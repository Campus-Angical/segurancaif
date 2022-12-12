import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:segurancaif/presentation/controllers/reserva/reserva_form_ctrl.dart';
import 'package:segurancaif/presentation/widgets/my_drawer.dart';

class ReservaFormPage extends StatefulWidget {
  const ReservaFormPage({super.key});

  @override
  State<ReservaFormPage> createState() => _ReservaFormPageState();
}

class _ReservaFormPageState extends State<ReservaFormPage> {
  ReservaFormCrtl controller = ReservaFormCrtl();
  TextEditingController matriculaController = TextEditingController();
  TextEditingController chaveController = TextEditingController();

  DateTime datahora = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 9, 114, 13),
        title: const Text(
          'Agendamento',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Form(
        child: Column(children: [
          TextFormField(
            controller: matriculaController,
            decoration: const InputDecoration(
                icon: Icon(Icons.person), hintText: 'Matricula:'),   
          ),
          DateTimePicker(
            type: DateTimePickerType.dateTimeSeparate,
            dateMask: 'yyyy-MM-dd',
            initialValue: '',
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            dateLabelText: 'Data',
            timeLabelText: "Hora",
            icon: Icon(Icons.event),
            onChanged: (val) {
              datahora = DateFormat('yyyy-MM-dd').parse(val);
            },
            validator: (val) {
              print(val);
              return null;
            },
            onSaved: (val) => print(val),
          ),
          TextFormField(
            controller: chaveController,
            decoration: const InputDecoration(
                icon: Icon(Icons.key_off_outlined), hintText: 'Cod.Chave'),
                
          ),
          ElevatedButton(
              onPressed: (() {
                controller
                    .submit(matriculaController.text, datahora,
                        chaveController.text)
                    .then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Reserva Realizada com Sucesso!"),
                    backgroundColor: Colors.green,
                  ));
                  Navigator.of(context).pop();
                }).catchError((error) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Erro!"),
                    backgroundColor: Colors.red,
                  ));
                });
              }),
              child: Text('Confirmar'))
        ]),
      ),
      backgroundColor: Colors.green,
    );
  }
}
