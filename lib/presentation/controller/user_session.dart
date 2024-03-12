import 'package:signals/signals_flutter.dart';

class UserSession {
  final username = signal<String>("");

  final accessToken = signal<String>("");

  void cleanSession() {
    username.value = "";
    accessToken.value = "";
  }
}
