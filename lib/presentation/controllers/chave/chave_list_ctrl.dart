import 'package:dartz/dartz.dart';
import 'package:segurancaif/data/repositories/sala_repository.dart';
import 'package:segurancaif/domain/entities/sala.dart';
import 'package:segurancaif/domain/failures/failures.dart';

class ChaveListCtrl {

  SalaRepository repository = SalaRepository();

  Future<Either<Failure, List<Sala>>> search(){
    return repository.all();
  }

}