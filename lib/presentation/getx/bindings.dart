import 'package:get/get.dart';
import 'package:segurancaif/data/repositories/reserva_repository.dart';
import 'package:segurancaif/data/repositories/sala_repository.dart';
import 'package:segurancaif/presentation/controllers/auth/auth_controller.dart';
import 'package:segurancaif/presentation/controllers/home_ctrl.dart';

class DependenciesBinding implements Bindings {
  
  @override
  void dependencies() {
    Get.put(ReservaRepository());
    Get.put(SalaRepository());

    Get.put(AuthCtrl());
    Get.put(HomeCtrl());
  }

}