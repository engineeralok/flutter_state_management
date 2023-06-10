import 'package:flutter/material.dart';
import 'package:mvvm_with_provider/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            // Navigator.pushNamed(context, RoutesName.home);
            // Utils.toastMessage("No Internet connection");
            Utils.snackbar("No Internet Connection", context);
          },
          child: const Text("Click"),
        ),
      ),
    );
  }
}
