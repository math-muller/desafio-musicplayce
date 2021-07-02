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
      padding: EdgeInsets.only(left: 20),
      width: this.width,
      height: this.height,
      color: Colors.black,
      child: Text(
        this.title,
        style: TextStyle(
          color: Colors.white,
          fontSize: this.fontSize,
        ),
      ),
    );
  }
}
