import 'package:dartz/dartz.dart';
import 'package:segurancaif/data/repositories/reserva_repository.dart';
import 'package:segurancaif/domain/entities/reserva.dart';
import 'package:segurancaif/domain/entities/sala.dart';
import 'package:segurancaif/domain/entities/usuario.dart';
import 'package:segurancaif/domain/failures/failures.dart';

class ReservaFormCrtl {
  
  ReservaRepository repository = ReservaRepository();
  
  Future<Either<Failure,String>> submit(String matricula, DateTime datahora, String chave) {
    Reserva reserva = Reserva('', Usuario('', matricula, '', ''), Sala('', '', chave, true), datahora);
    return repository.insert(reserva);
  }

  Future<Either<Failure,List<Usuario>>> buscaUsuariosPorMatricula(String matricula) async {
    return right([
      Usuario('xxx', 'xxx', '1234', 'jj')
    ]);
  }
  

}