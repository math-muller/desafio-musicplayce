import 'package:desafio_musicplayce/app/data/repositories/add_account/add_account.dart';
import 'package:desafio_musicplayce/app/data/usecases/add_account/add_account.dart';
import 'package:desafio_musicplayce/app/modules/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => RemoteAddAccount());
    Get.lazyPut(() => AddAccountRepository());
  }
}
