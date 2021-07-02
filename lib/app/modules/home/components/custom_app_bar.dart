import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar()
      : super(
          preferredSize: Size.fromHeight(150),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 40, left: 20),
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Olá,\n',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                                text: 'Aqui está sua lista de filmes!',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: IconButton(
                          onPressed: () => Get.offAllNamed(AppRoutes.LOGIN),
                          icon: Icon(
                            Icons.exit_to_app_rounded,
                            color: Colors.red.shade900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
}
