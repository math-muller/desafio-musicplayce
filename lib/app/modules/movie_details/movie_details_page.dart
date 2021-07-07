import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/utils.dart';

import '../../shared/shared.dart';

import '../../data/models/models.dart';

import 'components/components.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final MovieModel movie = Get.arguments;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            child: Stack(
              children: [
                Column(
                  children: [
                    MovieImageContainer(
                      imagePath: movie.thumb,
                      height: responsive.dp(42),
                      width: responsive.width,
                    ),
                    SizedBox(height: responsive.dp(1.1)),
                    MovieTitleContainer(
                      height: responsive.dp(7),
                      width: responsive.width,
                      fontSize: responsive.dp(2.8),
                      title: movie.title,
                    ),
                    SizedBox(
                      height: responsive.dp(3),
                    ),
                    MovieSynopsisContainer(
                      text: movie.synopsis,
                      fontSize: responsive.dp(2),
                    ),
                  ],
                ),
                Positioned(
                  left: 15,
                  top: 10,
                  child: SafeArea(
                    child: ReturnButton(
                      onPressed: () => Get.back(),
                      color: Colors.grey.shade300,
                      buttonColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
