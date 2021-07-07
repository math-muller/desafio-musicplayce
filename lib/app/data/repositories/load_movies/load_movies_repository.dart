import 'package:get/get.dart';

import '../../models/models.dart';

import '../../usecases/usecases.dart';

class LoadMoviesRepository {
  final RemoteLoadMovies _remote = Get.find<RemoteLoadMovies>();

  Stream<List<MovieModel>> load() => _remote.load();
}
