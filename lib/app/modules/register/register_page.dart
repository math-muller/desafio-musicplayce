import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/shared.dart';
import '../../utils/utils.dart';

import 'components/components.dart';

import 'register.dart';

class RegisterPage extends StatelessWidget with KeyboardManager {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double sizeRedCircle = responsive.wp(57);
    final double sizeBlackCircle = responsive.wp(80);

    return Scaffold(
      body: GetBuilder<RegisterController>(
        builder: (_) => GestureDetector(
          onTap: () => hideKeyboard(context),
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: responsive.height,
              child: Stack(
                children: [
                  Positioned(
                    top: -sizeBlackCircle * 0.4,
                    right: -sizeBlackCircle * 0.2,
                    child: Circle(
                      size: sizeBlackCircle,
                      colors: [Colors.black54, Colors.black],
                    ),
                  ),
                  Positioned(
                    top: -sizeRedCircle * 0.55,
                    left: -sizeRedCircle * 0.15,
                    child: Circle(
                      size: sizeRedCircle,
                      colors: [Colors.red.shade100, Colors.red.shade900],
                    ),
                  ),
                  Positioned(
                    top: sizeRedCircle * 0.60,
                    left: sizeRedCircle * 0.12,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.create_new_folder_rounded, size: 45),
                        SizedBox(
                          height: responsive.dp(3),
                        ),
                        Text(
                          "Inscreva-se para começar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: responsive.dp(2),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: sizeRedCircle * 1.2,
                    left: sizeRedCircle * 0.1,
                    child: RegisterForm(),
                  ),
                  Positioned(
                    left: 15,
                    top: 10,
                    child: SafeArea(
                      child: ReturnButton(
                        onPressed: _.goBack,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
