import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _token;

  login(String email, String password) {
    //TODO: Htpp request

    _token = "asdj,jbjdajsdjasdjkabsdkjabsdjk.ghhgghhg.klklkllk";
    print('Store JWT: $_token');

//TODO: Navigate to dashboard

    notifyListeners();
  }
}
