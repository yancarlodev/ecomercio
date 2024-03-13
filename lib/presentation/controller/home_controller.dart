import 'package:dependency_router/extensions.dart';
import 'package:dependency_router/router_controller.dart';
import 'package:ecomercio/data/model/product.dart';
import 'package:ecomercio/presentation/controller/user_session.dart';
import 'package:flutter/cupertino.dart';
import 'package:signals/signals_flutter.dart';

class HomeController extends RouterController {
  final BuildContext context;
  late final UserSession userSession;

  HomeController({required this.context}) {
    userSession = context.getInGlobal();
  }

  final productList = signal<List<Product>>([
    Product(
      name: "Café",
      imgUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkz_yA_ID2ZX8PC4dZ0ay78E2s2anZBiZHN4q8L4ajFPDw57FZF6Ru6Dj7KtN_zdhItGA&usqp=CAU",
      price: 10.0,
    ),
    Product(
      name: "Café 1",
      imgUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkz_yA_ID2ZX8PC4dZ0ay78E2s2anZBiZHN4q8L4ajFPDw57FZF6Ru6Dj7KtN_zdhItGA&usqp=CAU",
      price: 20.0,
    ),
    Product(
      name: "Café 2",
      imgUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkz_yA_ID2ZX8PC4dZ0ay78E2s2anZBiZHN4q8L4ajFPDw57FZF6Ru6Dj7KtN_zdhItGA&usqp=CAU",
      price: 30.0,
    ),
    Product(
      name: "Café 3",
      imgUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkz_yA_ID2ZX8PC4dZ0ay78E2s2anZBiZHN4q8L4ajFPDw57FZF6Ru6Dj7KtN_zdhItGA&usqp=CAU",
      price: 40.0,
    ),
    Product(
      name: "Café 4",
      imgUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkz_yA_ID2ZX8PC4dZ0ay78E2s2anZBiZHN4q8L4ajFPDw57FZF6Ru6Dj7KtN_zdhItGA&usqp=CAU",
      price: 50.0,
    ),
  ]);
}
