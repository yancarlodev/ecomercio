import 'package:dependency_router/extensions.dart';
import 'package:dependency_router/router_view.dart';
import 'package:ecomercio/presentation/controller/login_controller.dart';
import 'package:ecomercio/presentation/controller/user_session.dart';
import 'package:flutter/material.dart';

class LoginView extends RouterView<LoginController> {
  late final UserSession userSession;

  LoginView({super.key, required super.context}) {
    userSession = context.get();
  }

  void handleLogin(context) {
    userSession.username.value = controller.loginInput.text;
    userSession.accessToken.value = "SAD4SDAFASCVGADFASDOVI@";

    Navigator.popAndPushNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SizedBox(
          width: 300,
          height: 250,
          child: Form(
            child: Column(
              children: [
                TextField(
                  controller: controller.loginInput,
                  decoration: const InputDecoration(hintText: "Login"),
                ),
                TextField(
                  controller: controller.passwordInput,
                  decoration: const InputDecoration(hintText: "Senha"),
                ),
                ElevatedButton(
                  onPressed: () => handleLogin(context),
                  child: const Text("Entrar"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
