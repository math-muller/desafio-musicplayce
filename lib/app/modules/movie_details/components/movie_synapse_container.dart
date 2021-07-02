import 'package:flutter/material.dart';

class MovieSynapseContainer extends StatelessWidget {
  final String text;
  final double fontSize;

  const MovieSynapseContainer({
    Key? key,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white, fontSize: this.fontSize),
        textAlign: TextAlign.start,
      ),
    );
  }
}
