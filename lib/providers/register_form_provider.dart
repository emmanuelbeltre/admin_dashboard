// ignore_for_file: unnecessary_new, avoid_print

import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  String email = '';
  String password = '';
  String name = '';

  validateForm() {
    if (formKey.currentState!.validate()) {
      print('name:$name , email$email, password:$password');
      return true;
    } else {
      return false;
    }
  }
}
