import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/utils.dart';

import '../../shared/shared.dart';

import 'components/components.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final movie = Get.arguments;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: responsive.height,
            child: Stack(
              children: [
                Column(
                  children: [
                    MovieImageContainer(
                      imagePath: movie['thumb'],
                      height: responsive.dp(42),
                      width: responsive.width,
                    ),
                    SizedBox(height: responsive.dp(1.1)),
                    MovieTitleContainer(
                      height: responsive.dp(7),
                      width: responsive.width,
                      fontSize: responsive.dp(2.8),
                      title: movie['titulo'],
                    ),
                    Divider(
                      color: Colors.grey.shade600,
                      endIndent: 16,
                      indent: 16,
                    ),
                    MovieSynopsisContainer(
                      text: movie['sinopse'],
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
