import 'package:get/get.dart';

import '../../data/repositories/repositories.dart';
import '../../data/models/models.dart';
import '../../routes/routes.dart';

class HomeController extends GetxController {
  final _repository = Get.find<LoadMoviesRepository>();

  Stream<List<MovieModel>> load() {
    return _repository.load();
  }

  void goToMovieDetails(MovieModel movie) {
    Get.toNamed(AppRoutes.MOVIEDETAILS, arguments: movie);
  }
}
