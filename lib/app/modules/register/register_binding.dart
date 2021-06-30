import 'package:desafio_musicplayce/app/modules/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
