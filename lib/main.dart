import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/modules/modules.dart';

import '../../app/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
    );
  }
}
