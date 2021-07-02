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
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            title: Text(
              this.title,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w800,
              ),
            ),
            leading: Image.network(this.imagePath),
            onTap: onTap,
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
