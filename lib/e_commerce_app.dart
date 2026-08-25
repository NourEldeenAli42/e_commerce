import 'package:flutter/material.dart';
import 'package:paw_print/features/favourites/favourites_view.dart';
import 'package:paw_print/features/home/home_view.dart';
import 'package:paw_print/features/login/login_view.dart';
import 'package:paw_print/features/main_view.dart';
import 'package:paw_print/features/product/product_view.dart';
import 'package:paw_print/features/register/register_view.dart';
import 'package:paw_print/features/splash/splash_view.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashView(
          onFinished: () => Navigator.pushReplacementNamed(context, '/login'),
        ),
        '/login': (context) => const LoginView(),
        '/register': (context) => const RegisterView(),
        '/favorites': (context) => const FavoritesView(),
        '/main': (context) => const MainView(),
        '/home': (context) => HomeView(),
        '/product': (context) => const ProductView(),

        // '/settings': (context) => const SettingsView(),
      },

      title: 'E-Commerce App',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF5E5CE6)),
      ),

      // ? Dark Theme
      darkTheme: ThemeData(
        chipTheme: ChipThemeData(
          showCheckmark: false,

          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF5E5CE6),
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
