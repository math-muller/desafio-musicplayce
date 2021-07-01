import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/shared.dart';

import '../../../utils/utils.dart';
import '../register.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final controller = Get.find<RegisterController>();

    return Container(
      constraints: BoxConstraints(maxWidth: responsive.isTablet ? 430 : 360),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            InputText(
              label: 'Nome',
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              validator: controller.validateName,
            ),
            SizedBox(height: responsive.dp(2.2)),
            InputText(
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              validator: controller.validateEmail,
            ),
            SizedBox(height: responsive.dp(2.2)),
            InputText(
              label: 'Senha',
              keyboardType: TextInputType.text,
              obscureText: true,
              validator: controller.validatePassword,
            ),
            SizedBox(height: responsive.dp(3)),
            SizedBox(
              width: responsive.dp(50),
              height: responsive.dp(5.5),
              child: ElevatedButton(
                onPressed: controller.validateForm,
                child: Text('Cadastrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
