import 'package:get/get.dart';
import 'package:segurancaif/domain/entities/seguranca.dart';
import 'package:segurancaif/presentation/states/auth/auth_state.dart';

class AuthCtrl extends GetxController {

 final _state = AuthenticatedState(Usuario('a', 'b', 'c', 'd')).obs;
 AuthState get state => _state.value;


}