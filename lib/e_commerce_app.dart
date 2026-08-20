import 'package:flutter/material.dart';
import 'package:paw_print/core/login/login_view.dart';
import 'package:paw_print/core/splash/splash_view.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF5E5CE6)),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF5E5CE6),
          brightness: Brightness.dark,
        ),
      ),
      routes: {
        '/': (context) => SplashView(
          onFinished: () =>
              Navigator.of(context).pushReplacementNamed('/login'),
        ),
        '/login': (context) => const LoginView(),
      },
    );
  }
}
