import 'package:admin_dashboard/services/local_storage.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _token;

  login(String email, String password) {
    //TODO: Htpp request

    _token = "asdj,jbjdajsdjasdjkabsdkjabsdjk.ghhgghhg.klklkllk";

    LocalStorage.prefs.setString('token', this._token!);
    LocalStorage.prefs.getString('token');
//TODO: Navigate to dashboard

    notifyListeners();
  }
}
