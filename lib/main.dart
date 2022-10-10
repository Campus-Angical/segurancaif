import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:segurancaif/presentation/controllers/auth/auth_controller.dart';
import 'package:segurancaif/presentation/getx/bindings.dart';
import 'package:segurancaif/presentation/pages/auth/login_screen.dart';
import 'package:segurancaif/presentation/pages/chaves_page.dart';
import 'package:segurancaif/presentation/states/auth/auth_state.dart';

void main() {
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
          return ChavesPage();
        }

        return Container();
      }),
    );
  }
}
