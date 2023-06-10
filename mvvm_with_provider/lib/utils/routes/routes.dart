import 'package:flutter/material.dart';
import 'package:mvvm_with_provider/utils/routes/routes_name.dart';
import 'package:mvvm_with_provider/view/home_screen.dart';
import 'package:mvvm_with_provider/view/login_screen.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // final argument = settings.arguments;
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        );
      default:
        return
            // MaterialPageRoute(builder: (_) {
            //   return const Scaffold(
            //       body: Center(
            //     child: Text("No route Defined"),
            //   ));
            // });
            MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        );
    }
  }
}
