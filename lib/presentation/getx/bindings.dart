import 'package:get/get.dart';
import 'package:segurancaif/presentation/controllers/auth/auth_controller.dart';

class DependenciesBinding implements Bindings {
  
  @override
  void dependencies() {
    Get.put(AuthCtrl());
  }

}