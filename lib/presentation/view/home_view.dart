import 'package:dependency_router/extensions.dart';
import 'package:dependency_router/router_view.dart';
import 'package:ecomercio/presentation/controller/home_controller.dart';
import 'package:ecomercio/presentation/controller/user_session.dart';
import 'package:flutter/material.dart';

class HomeView extends RouterView<HomeController> {
  late final UserSession userSession;

  HomeView({super.key, required super.context}) {
    userSession = context.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Olá, ${userSession.username.value}"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [],
        ));
  }
}
