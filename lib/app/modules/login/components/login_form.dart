import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';

import '../../../shared/shared.dart';
import '../../../helpers/helpers.dart';

import '../login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final controller = Get.find<LoginController>();

    return Container(
      constraints: BoxConstraints(maxWidth: responsive.isTablet ? 430 : 360),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            InputText(
              label: R.string.email,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              validator: controller.validateEmail,
            ),
            SizedBox(height: responsive.dp(2.2)),
            InputText(
              label: R.string.password,
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
                child: Text(R.string.enterButton),
              ),
            ),
            SizedBox(height: responsive.dp(1)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  R.string.newAroundHere,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                TextButton(
                  onPressed: controller.goToRegister,
                  child: Text(
                    R.string.register,
                    style: TextStyle(color: Colors.red.shade900),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
