import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:segurancaif/firebase_options.dart';
import 'package:segurancaif/presentation/controllers/auth/auth_controller.dart';
import 'package:segurancaif/presentation/getx/bindings.dart';
import 'package:segurancaif/presentation/pages/auth/singup_page.dart';
import 'package:segurancaif/presentation/pages/historico_page.dart';
import 'package:segurancaif/presentation/pages/reserva/reserva_form_page.dart';
import 'package:segurancaif/presentation/pages/auth/login_screen.dart';
import 'package:segurancaif/presentation/pages/chave/chave_list_page.dart';
import 'package:segurancaif/presentation/pages/home_page.dart';
import 'package:segurancaif/presentation/states/auth/auth_state.dart';
import 'dart:async';                                     // new
import 'package:firebase_auth/firebase_auth.dart'        // new
    hide EmailAuthProvider, PhoneAuthProvider;           // new
import 'package:firebase_ui_auth/firebase_ui_auth.dart'; // new
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';                 // new

import 'firebase_options.dart';                          // new
import 'src/authentication.dart';                        // new
import 'src/widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


runApp(
  ChangeNotifierProvider(
    create: (context) => ApplicationState(),
    builder: ((context, child) => const App())
));
 // runApp(GetMaterialApp(
   // home: const MyApp(),
   // initialBinding: DependenciesBinding(),
  //));
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
          return HomePage();
        }

        return Container();
      }),
    );
  }
}
class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }

  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;

 Future<void> init() async {
    /*await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);*/

    FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
    ]);

    FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loggedIn = true;
      } else {
        _loggedIn = false;
      }
      notifyListeners();
    });
  }
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Start adding here
      initialRoute: '/home',
      routes: {
        '/home': (context) {
          return HomePage();
        },
        '/sign-in': ((context) {
          return SignInScreen(
            actions: [
              ForgotPasswordAction(((context, email) {
                Navigator.of(context)
                    .pushNamed('/forgot-password', arguments: {'email': email});
              })),
              AuthStateChangeAction(((context, state) {
                if (state is SignedIn || state is UserCreated) {
                  var user = (state is SignedIn)
                      ? state.user
                      : (state as UserCreated).credential.user;
                  if (user == null) {
                    return;
                  }
                  if (state is UserCreated) {
                    user.updateDisplayName(user.email!.split('@')[0]);
                  }
                  if (!user.emailVerified) {
                    user.sendEmailVerification();
                    const snackBar = SnackBar(
                        content: Text(
                            'Please check your email to verify your email address'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  Navigator.of(context).pushReplacementNamed('/home');
                }
              })),
            ],
          );
        }),
        '/forgot-password': ((context) {
          final arguments = ModalRoute.of(context)?.settings.arguments
              as Map<String, dynamic>?;

          return ForgotPasswordScreen(
            email: arguments?['email'] as String,
            headerMaxExtent: 200,
          );
        }),
        '/profile': ((context) {
          return ProfileScreen(
            providers: [],
            actions: [
              SignedOutAction(
                ((context) {
                  Navigator.of(context).pushReplacementNamed('/home');
                }),
              ),
            ],
          );
        })
      },
      
    );
  }
}
