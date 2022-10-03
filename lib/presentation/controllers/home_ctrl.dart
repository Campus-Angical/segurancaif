import 'package:get/get.dart';
import 'package:segurancaif/data/repositories/reserva_repository.dart';
import 'package:segurancaif/data/repositories/sala_repository.dart';
import 'package:segurancaif/domain/entities/reserva.dart';
import 'package:segurancaif/domain/entities/sala.dart';
import 'package:segurancaif/domain/entities/usuario.dart';
import 'package:segurancaif/presentation/controllers/custom_ctrl.dart';

class HomeCtrl extends CustomCtrl {

  ReservaRepository reservaRepository = Get.find();
  SalaRepository salaRepository = Get.find();

  void addReserva(String matricula, String chave) {
    Sala sala = salaRepository.buscaPorChave(chave);
    Reserva reserva = Reserva('', Usuario('', '', '', ''), sala, DateTime.now());
    reservaRepository.insert(reserva);
  }

}