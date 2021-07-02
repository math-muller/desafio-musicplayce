import 'package:get/get.dart';

import '../../data/usecases/usecases.dart';
import '../../data/repositories/repositories.dart';

import 'home.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => RemoteLoadMovies());
    Get.lazyPut(() => LoadMoviesRepository());
  }
}
