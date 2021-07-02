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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20.0),
      child: Text(
        this.text,
        style: TextStyle(color: Colors.grey.shade900, fontSize: this.fontSize),
        textAlign: TextAlign.start,
      ),
    );
  }
}
