import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String? text)? validator;

  const InputText({
    Key? key,
    required this.label,
    required this.keyboardType,
    required this.obscureText,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,
      validator: this.validator,
      decoration: InputDecoration(
        labelText: this.label,
      ),
    );
  }
}
