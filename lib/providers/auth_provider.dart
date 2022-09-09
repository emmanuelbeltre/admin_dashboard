import 'package:admin_dashboard/services/local_storage.dart';
import 'package:flutter/material.dart';

enum AuthStatus { checking, authenticated, notAuthenticated }

class AuthProvider extends ChangeNotifier {
  String? _token;

  AuthStatus authStatus = AuthStatus.checking;

//Constructor
  AuthProvider() {
    this.isAuthenticated();
  }

  login(String email, String password) {
    //TODO: Htpp request

    _token = "asdj,jbjdajsdjasdjkabsdkjabsdjk.ghhgghhg.klklkllk";

    LocalStorage.prefs.setString('token', this._token!);
    LocalStorage.prefs.getString('token');
//TODO: Navigate to dashboard

    notifyListeners();
  }

  Future<bool> isAuthenticated() async {
    final token = LocalStorage.prefs.getString('token');

    if (token == null) {
      authStatus = AuthStatus.notAuthenticated;
      notifyListeners();
      return false;
    }

    //TODO: go to backend to mahe sure that the JWT is valid

    Future.delayed(const Duration(milliseconds: 1000));
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    return true;
  }
}
