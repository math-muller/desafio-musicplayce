import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/repositories/repositories.dart';

import '../../routes/routes.dart';

import '../../shared/shared.dart';

class LoginController extends GetxController {
  final _repository = Get.find<AuthenticationRepository>();

  GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<FormState> get formKey => _formKey;

  String _email = '';
  String _password = '';

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
      auth();
    }
  }

  Future<void> auth() async {
    SpinnerDialog spinnerDialog = SpinnerDialog(Get.overlayContext!);
    try {
      spinnerDialog.showLoading();
      await _repository.auth(email: _email, password: _password);
      spinnerDialog.hideLoading();
      await Get.offNamed(AppRoutes.HOME);
    } catch (error) {
      spinnerDialog.hideLoading();
      showMessage(
        context: Get.overlayContext!,
        message: '$error'.substring(10),
      );
    }
  }

  Future<void> goToRegister() async {
    await Get.toNamed(AppRoutes.REGISTER);
  }
}
