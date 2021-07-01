import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/routes/routes.dart';

import 'app/modules/login/login.dart';
import 'app/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          if (snapshot.hasError) {
            return Center(child: Text('Firebase Error'));
          }
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: makeAppTheme(),
            home: LoginPage(),
            initialBinding: LoginBinding(),
            debugShowCheckedModeBanner: false,
            getPages: AppPages.pages,
          );
        }
        return Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.red.shade900),
          ),
        );
      },
    );
  }
}
