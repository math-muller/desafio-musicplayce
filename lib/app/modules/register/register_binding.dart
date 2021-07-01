import 'package:get/get.dart';

import '../../data/repositories/add_account/add_account.dart';
import '../../data/usecases/add_account/add_account.dart';

import 'register.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => RemoteAddAccount());
    Get.lazyPut(() => AddAccountRepository());
  }
}
