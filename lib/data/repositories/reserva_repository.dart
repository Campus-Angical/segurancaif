import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:segurancaif/domain/entities/reserva.dart';
import 'package:segurancaif/domain/failures/failures.dart';

class ReservaRepository {
  Future<Either<Failure, String>> insert(Reserva reserva) {
    return FirebaseFirestore.instance.collection('reservas').add({
      'matricula': reserva.usuario.matricula,
      'datahora': reserva.horario,
      'chave': reserva.sala.chave
    }).then((value) {
      return right<Failure, String>("");
    }).catchError((error) {
      return left<Failure, String>(Failure());
    });
  }
}
