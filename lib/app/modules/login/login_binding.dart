import 'package:get/get.dart';

import '../../data/repositories/authentication/authentication.dart';
import '../../data/usecases/authentication/authentication.dart';

import 'login.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => AuthenticationRepository());
    Get.lazyPut(() => RemoteAuthentication());
  }
}
