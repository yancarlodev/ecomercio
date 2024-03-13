import 'package:dependency_router/router_view.dart';
import 'package:ecomercio/presentation/controller/login_controller.dart';
import 'package:flutter/material.dart';

class LoginView extends RouterView<LoginController> {
  const LoginView({super.key, required super.context});

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
                  onPressed: () => controller.handleLogin(),
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
