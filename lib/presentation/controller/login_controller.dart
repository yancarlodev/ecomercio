import 'package:dependency_router/extensions.dart';
import 'package:dependency_router/router_controller.dart';
import 'package:ecomercio/presentation/controller/user_session.dart';
import 'package:flutter/cupertino.dart';

class LoginController extends RouterController {
  final BuildContext context;
  late final UserSession userSession;

  LoginController({required this.context}) {
    userSession = context.getInGlobal();
  }

  final TextEditingController loginInput = TextEditingController();
  final TextEditingController passwordInput = TextEditingController();

  void handleLogin() {
    userSession.username.value = loginInput.text;
    userSession.accessToken.value = passwordInput.text;

    Navigator.popAndPushNamed(context, "/home");
  }
}
