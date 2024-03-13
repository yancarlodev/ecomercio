import 'package:dependency_router/router_view.dart';
import 'package:ecomercio/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends RouterView<HomeController> {
  const HomeView({super.key, required super.context});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Olá, ${controller.userSession.username.value}"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [],
        ));
  }
}
