import 'package:flutter/material.dart';

class MovieImageContainer extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;

  const MovieImageContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      decoration: BoxDecoration(color: Colors.black, boxShadow: [
        BoxShadow(
          spreadRadius: 1,
          blurRadius: 20,
          offset: Offset(0, 2),
        ),
      ]),
      child: Image.network(this.imagePath),
    );
  }
}
