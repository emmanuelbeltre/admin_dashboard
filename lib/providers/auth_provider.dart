import 'package:flutter/material.dart';
import 'package:admin_dashboard/router/router.dart';

import 'package:admin_dashboard/api/CafeApi.dart';

import 'package:admin_dashboard/services/local_storage.dart';
import 'package:admin_dashboard/services/navigation_service.dart';

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

    authStatus = AuthStatus.authenticated;
    notifyListeners();

    NavigationService.replaceTo(Flurorouter.dashboardRoute);
  }

  register(String email, String password, String name) {
    final data = {'nombre': name, 'correo': email, 'password': password};
    CafeApi.post('/usuarios', data).then((json) {
      print(json);
    }).catchError((e) {
      print('error en: $e');

      //TODO: Mostrar notifiicacion de error
    });

    // authStatus = AuthStatus.authenticated;
    // notifyListeners();
    // LocalStorage.prefs.getString('token');
    // LocalStorage.prefs.setString('token', this._token!);
    // NavigationService.replaceTo(Flurorouter.dashboardRoute);
  }

  Future<bool> isAuthenticated() async {
    final token = LocalStorage.prefs.getString('token');

    if (token == null) {
      authStatus = AuthStatus.notAuthenticated;
      notifyListeners();
      return false;
    }

    //TODO: go to backend to mahe sure that the JWT is valid

    await Future.delayed(const Duration(milliseconds: 1000));
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    return true;
  }
}
