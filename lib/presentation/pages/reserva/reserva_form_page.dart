import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:segurancaif/presentation/controllers/reserva/reserva_form_ctrl.dart';

class ReservaForm extends StatefulWidget {
  const ReservaForm({super.key});

  @override
  State<ReservaForm> createState() => _ReservaFormState();
}

class _ReservaFormState extends State<ReservaForm> {


  ReservaFormCrtl controller = ReservaFormCrtl();
  DateTime datahora = DateTime.now();
  TextEditingController matriculaController = TextEditingController();
  TextEditingController chaveController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 9, 114, 13),
        title: Text(
          'Agendamento',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(245, 112, 255, 109),
      ),
      body: Form(
        child: Column(children: [
          TextFormField(
            controller: matriculaController,
            decoration: const InputDecoration(
                icon: Icon(Icons.person), hintText: 'Matricula:'),
          ),
          DateTimePicker(
            type: DateTimePickerType.dateTimeSeparate,
            dateMask: 'dd/MM/yyyy',
            initialValue: '',
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            dateLabelText: 'Data',
            timeLabelText: "Hora",
            icon: Icon(Icons.event),
            onChanged: (val) {
              datahora = DateFormat('dd/MM/yyyy').parse(val);
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
                controller.submit(matriculaController.text, datahora, chaveController.text);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Reserva Realizada com Sucesso!"),
                    backgroundColor: Colors.green,
                ));
              }),
              child: Text('Confirmar'))
        ]),
      ),
    );
  }
}
