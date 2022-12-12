import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:segurancaif/domain/entities/reserva.dart';
import 'package:segurancaif/domain/entities/sala.dart';
import 'package:segurancaif/domain/entities/usuario.dart';
import 'package:segurancaif/domain/failures/failures.dart';

class ReservaRepository {

  Future<Either<Failure, List<Reserva>>> all() async {
    return FirebaseFirestore.instance
        .collection('reservas')
        .get()
        .then((snapshot) {
      List<Reserva> reservas = [];
      for (QueryDocumentSnapshot doc in snapshot.docs) {
        final json = doc.data() as Map<String, dynamic>;
        json['id'] = doc.id;

        Usuario usuario = Usuario('email', json['matricula'], '', 'usuario');
        Sala sala = Sala('id', 'nome', json['chave'], false);
        Reserva reserva =
            Reserva(json['id'], usuario, sala, DateTime.fromMillisecondsSinceEpoch(json['datahora']));
        reservas.add(reserva);
      }
      return right<Failure, List<Reserva>>(reservas);
    }).catchError((error) {
      return left<Failure, List<Reserva>>(Failure());
    });
  }

  Future<Either<Failure, String>> insert(Reserva reserva) {
    return FirebaseFirestore.instance.collection('reservas').add({
      'matricula': reserva.usuario.matricula,
      'datahora': reserva.horario.millisecondsSinceEpoch,
      'chave': reserva.sala.chave
    }).then((value) {
      return right<Failure, String>("");
    }).catchError((error) {
      return left<Failure, String>(Failure());
    });
  }
}
