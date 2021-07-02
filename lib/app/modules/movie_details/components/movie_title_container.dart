import 'package:flutter/material.dart';

class MovieTitleContainer extends StatelessWidget {
  final double height;
  final double width;
  final double fontSize;
  final String title;

  const MovieTitleContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.fontSize,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: this.width,
      height: this.height,
      color: Colors.grey.shade200,
      child: Text(
        this.title,
        style: TextStyle(
          color: Colors.grey.shade900,
          fontSize: this.fontSize,
        ),
      ),
    );
  }
}
