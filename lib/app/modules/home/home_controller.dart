import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';

import '../../data/repositories/repositories.dart';
import '../../routes/routes.dart';

class HomeController extends GetxController {
  final _repository = Get.find<LoadMoviesRepository>();

  Stream<QuerySnapshot<Map<String, dynamic>>> load() {
    return _repository.load();
  }

  void goToMovieDetails(Map<String, dynamic> data) {
    Get.toNamed(AppRoutes.MOVIEDETAILS, arguments: data);
  }
}
