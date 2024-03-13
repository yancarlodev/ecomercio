import 'package:dependency_router/extensions.dart';
import 'package:dependency_router/router_config_view.dart';
import 'package:ecomercio/presentation/controller/home_controller.dart';
import 'package:ecomercio/presentation/controller/login_controller.dart';
import 'package:ecomercio/presentation/view/home_view.dart';
import 'package:ecomercio/presentation/view/login_view.dart';

final HomeRouter = RouterConfigView(
  route: "/home",
  dependencies: (context) {
    context.add(HomeController(context: context));
  },
  view: <HomeController>(context) => HomeView(context: context),
);

final LoginRouter = RouterConfigView(
  route: "/",
  dependencies: (context) {
    context.add(LoginController(context: context));
  },
  view: <LoginController>(context) => LoginView(context: context),
);
