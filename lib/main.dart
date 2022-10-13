import 'package:campus_ola/screens/auth/signin.dart';
import 'package:campus_ola/screens/auth/signup.dart';
import 'package:campus_ola/screens/campus_ola_5/campus_ola_five.dart';
import 'package:campus_ola/screens/home_screen.dart';
import 'package:campus_ola/stores/login_store.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Provider(create: (_) => LoginStore(), child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SignInScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        SignupScreen.id: (context) => const SignupScreen(),
        SignInScreen.id: (context) => const SignInScreen(),
      },
    );
  }
}
