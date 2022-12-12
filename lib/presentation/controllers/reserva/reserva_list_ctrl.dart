import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:segurancaif/data/repositories/reserva_repository.dart';
import 'package:segurancaif/domain/entities/reserva.dart';
import 'package:segurancaif/domain/entities/usuario.dart';
import 'package:segurancaif/domain/failures/failures.dart';

class ReservaListCtrl extends GetxController {
  ReservaRepository repository = ReservaRepository();
  Usuario? usuario;

  Future<Either<Failure, List<Reserva>>> search(){
    return repository.all();
  }
}