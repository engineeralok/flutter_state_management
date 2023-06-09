import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_with_provider/model/user_model.dart';
import 'package:mvvm_with_provider/res/components/rounded_button.dart';
import 'package:mvvm_with_provider/utils/routes/routes_name.dart';
import 'package:mvvm_with_provider/utils/utils.dart';
import 'package:mvvm_with_provider/view_model/auth_view_model.dart';
import 'package:mvvm_with_provider/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  final ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _emailController.dispose();
    _passwordController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    _obsecurePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              focusNode: emailFocusNode,
              decoration: const InputDecoration(
                hintText: "Email",
                label: Text("Email"),
                prefixIcon: Icon(Icons.alternate_email),
              ),
              onFieldSubmitted: (value) {
                Utils.feildFocusChange(
                    context, emailFocusNode, passwordFocusNode);
              },
            ),
            ValueListenableBuilder(
              valueListenable: _obsecurePassword,
              builder: (BuildContext context, dynamic value, Widget? child) {
                return TextFormField(
                  controller: _passwordController,
                  obscureText: _obsecurePassword.value,
                  focusNode: passwordFocusNode,
                  decoration: InputDecoration(
                    hintText: "Password",
                    label: const Text("Password"),
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: InkWell(
                      onTap: () {
                        _obsecurePassword.value = !_obsecurePassword.value;
                      },
                      child: _obsecurePassword.value
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: height * .085),
            RoundedButton(
              title: "Login",
              loading: authViewModel.loading,
              onPress: () async {
                if (_emailController.text.isEmpty) {
                  Utils.flushBarErrorMessage("Please enter email", context);
                } else if (_passwordController.text.isEmpty) {
                  Utils.flushBarErrorMessage("Please enter password", context);
                } else if (_passwordController.text.length < 6) {
                  Utils.flushBarErrorMessage(
                      "Please enter 6 character password", context);
                } else {
                  // Map data = {
                  //   'email': _emailController.text.toString(),
                  //   'password': _passwordController.text.toString(),
                  // };
                  await Future.delayed(const Duration(seconds: 2));
                  Map data = {
                    'email': "eve.holt@reqres.in",
                    'password': "cityslicka",
                  };

                  authViewModel.loginApi(data, context);
                  // UserViewModel().saveUser(user);
                  if (kDebugMode) {
                    print("api hit");
                  }
                }
              },
            ),
            SizedBox(height: height * .02),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.signUp);
              },
              child: const Text("Dont't have an account? Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
