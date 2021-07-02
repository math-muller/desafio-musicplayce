import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final void Function()? onTap;

  const MovieItem({
    Key? key,
    required this.title,
    required this.imagePath,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: Colors.white),
        ListTile(
          title: Text(this.title, style: TextStyle(color: Colors.black)),
          leading: Image.network(this.imagePath),
          onTap: onTap,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
