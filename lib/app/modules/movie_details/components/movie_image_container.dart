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
      color: Colors.black,
      child: Image.network(this.imagePath),
    );
  }
}
