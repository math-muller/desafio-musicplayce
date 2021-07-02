import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color color;
  final Color? buttonColor;

  const ReturnButton({
    Key? key,
    this.onPressed,
    this.buttonColor,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: this.color,
      padding: EdgeInsets.all(10),
      borderRadius: BorderRadius.circular(30),
      onPressed: this.onPressed,
      child: Icon(Icons.arrow_back, color: this.buttonColor),
    );
  }
}
