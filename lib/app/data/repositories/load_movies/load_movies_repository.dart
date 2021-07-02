import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../usecases/usecases.dart';

class LoadMoviesRepository {
  final RemoteLoadMovies _remote = Get.find<RemoteLoadMovies>();

  Stream<QuerySnapshot<Map<String, dynamic>>> load() => _remote.load();
}
