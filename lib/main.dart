import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:segurancaif/presentation/controllers/auth/auth_controller.dart';
import 'package:segurancaif/presentation/getx/bindings.dart';
import 'package:segurancaif/presentation/pages/reserva/reserva_form_page.dart';
import 'package:segurancaif/presentation/pages/auth/login_screen.dart';
import 'package:segurancaif/presentation/pages/chave/chave_list_page.dart';
import 'package:segurancaif/presentation/pages/home_page.dart';
import 'package:segurancaif/presentation/states/auth/auth_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(GetMaterialApp(
    home: const MyApp(),
    initialBinding: DependenciesBinding(),
  ));
}

class MyApp extends GetWidget<AuthCtrl> {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.state is UnauthenticatedState) {
          return LoginScreen();
        }

        if (controller.state is AuthenticatingState) {
          return const CircularProgressIndicator();
        }

        if (controller.state is AuthenticatedState) {
          return ReservaForm();
        }

        return Container();
      }),
    );
  }
}
