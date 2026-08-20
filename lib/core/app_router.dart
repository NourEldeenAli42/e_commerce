import 'package:go_router/go_router.dart';
import 'package:paw_print/features/login/login_view.dart';
import 'package:paw_print/features/register/register_view.dart';
import 'package:paw_print/features/splash/splash_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>
          SplashView(onFinished: () => context.go('/login')),
    ),
    GoRoute(path: '/login', builder: (context, state) => const LoginView()),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterView(),
    ),
  ],
);
