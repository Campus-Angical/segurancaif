import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:segurancaif/domain/entities/sala.dart';
import 'package:segurancaif/domain/failures/failures.dart';

class SalaRepository {
  Sala buscaPorChave(String chave) {
    return Sala('01', 'Lab01', '0001');
  }

  Future<Either<Failure, List<Sala>>> all() async {
    return FirebaseFirestore.instance
        .collection('salas')
        .get()
        .then((snapshot) {
      List<Sala> salas = [];
      for (QueryDocumentSnapshot doc in snapshot.docs) {
        final json = doc.data() as Map<String, dynamic>;
        json['id'] = doc.id;
        Sala sala = Sala(json['id'], json['nome'], json['chave']);
        salas.add(sala);
      }
      return right<Failure, List<Sala>>(salas);
    }).catchError((error) {
      return left<Failure, List<Sala>>(Failure());
    });
  }
}
