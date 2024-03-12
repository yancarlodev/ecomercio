import 'package:dependency_router/custom_navigator.dart';
import 'package:dependency_router/dependencies.dart';
import 'package:dependency_router/router_app.dart';
import 'package:ecomercio/presentation/controller/user_session.dart';
import 'package:ecomercio/routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Dependencies(
      routerApp: RouterApp(
        navigatorObservers: [
          CustomNavigator(),
        ],
        configRoutes: [
          HomeRouter,
          LoginRouter,
        ],
        initialRoute: "/",
      ),
      dependenciasGlobais: [
        UserSession(),
      ],
    ),
  );
}
