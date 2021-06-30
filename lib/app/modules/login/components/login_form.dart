import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

import '../../../shared/shared.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      constraints: BoxConstraints(maxWidth: responsive.isTablet ? 430 : 360),
      child: Form(
        child: Column(
          children: [
            InputText(
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            ),
            SizedBox(height: responsive.dp(2.2)),
            InputText(
              label: 'Senha',
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            SizedBox(height: responsive.dp(3)),
            SizedBox(
              width: responsive.dp(50),
              height: responsive.dp(5.5),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Entrar'),
              ),
            ),
            SizedBox(height: responsive.dp(1)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Novo por aqui?',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cadastre-se',
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
