import 'package:desafio_musicplayce/app/data/usecases/usecases.dart';
import 'package:get/get.dart';

class AuthenticationRepository {
  final RemoteAuthentication _remote = Get.find<RemoteAuthentication>();

  Future<void> auth({required String email, required String password}) =>
      _remote.auth(email: email, password: password);
}
