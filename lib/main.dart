import 'package:flutter/material.dart';
import 'features/auth/presentation/login_screen.dart';
import 'features/electoral/presentation/screens/home_screen.dart';
import 'features/electoral/presentation/screens/acta_form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => const LoginScreen(),
        '/home': (_) => const HomeScreen(),
        '/acta': (_) => const ActaFormScreen(),
      },
    );
  }
}