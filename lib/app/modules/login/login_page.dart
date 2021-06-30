import 'package:flutter/material.dart';

import '../../utils/utils.dart';

import '../../shared/shared.dart';

class LoginPage extends StatelessWidget with KeyboardManager {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Scaffold(
      body: GestureDetector(
        onTap: () => hideKeyboard(context),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            child: Stack(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
