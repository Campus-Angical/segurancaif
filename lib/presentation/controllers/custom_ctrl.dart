import 'package:get/get.dart';
import 'package:segurancaif/presentation/states/page_state.dart';

class CustomCtrl extends GetxController {
  final _state = PageState().obs;
  PageState get state => _state.value;

  set state(PageState state) => _state.value = state;
}