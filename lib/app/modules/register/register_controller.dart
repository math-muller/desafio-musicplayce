import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<FormState> get formKey => _formKey;

  String _name = '';
  String _email = '';
  String _password = '';

  String? validateName(String? text) {
    if (text == null || text.isEmpty) {
      return 'Digite seu nome';
    } else {
      _name = text;
      return null;
    }
  }

  String? validateEmail(String? text) {
    final _regex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (text == null || text.isEmpty) {
      return 'Digite seu email';
    } else {
      if (_regex.hasMatch(text)) {
        _email = text;
        return null;
      } else {
        return 'Email inválido';
      }
    }
  }

  String? validatePassword(String? text) {
    if (text == null || text.isEmpty) {
      return 'Digite sua senha';
    } else {
      if (text.trim().length > 5) {
        _password = text;
        return null;
      } else {
        return 'Sua senha deve ter mais de 6 digitos';
      }
    }
  }

  void validateForm() {
    final _isValidForm = _formKey.currentState!.validate();
    if (_isValidForm) {
      addAccount();
    }
  }

  Future<void> addAccount() async {
    try {} catch (error) {}
  }

  Future<void> addAccountIntoFirestoreDatabase() async {}
}
