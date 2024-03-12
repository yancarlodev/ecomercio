import 'package:dependency_router/extensions.dart';
import 'package:dependency_router/router_config_view.dart';
import 'package:ecomercio/presentation/controller/home_controller.dart';
import 'package:ecomercio/presentation/controller/login_controller.dart';
import 'package:ecomercio/presentation/controller/user_session.dart';
import 'package:ecomercio/presentation/view/home_view.dart';
import 'package:ecomercio/presentation/view/login_view.dart';

final HomeRouter = RouterConfigView(
  route: "/home",
  dependencies: (context) {
    final userSession = context.getInGlobal<UserSession>();

    context.add(userSession);
    context.add(HomeController());
  },
  view: <HomeController>(context) => HomeView(context: context),
);

final LoginRouter = RouterConfigView(
  route: "/",
  dependencies: (context) {
    final userSession = context.getInGlobal<UserSession>();

    context.add(userSession);
    context.add(LoginController());
  },
  view: <LoginController>(context) => LoginView(context: context),
);
