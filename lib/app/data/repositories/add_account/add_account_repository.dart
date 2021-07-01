import 'package:desafio_musicplayce/app/data/usecases/usecases.dart';
import 'package:get/get.dart';

class AddAccountRepository {
  final RemoteAddAccount _remote = Get.find<RemoteAddAccount>();

  Future<void> add({required String email, required String password}) =>
      _remote.add(email: email, password: password);

  Future<void> addIntoFirestoreDatabase({
    required String nome,
    required String email,
  }) =>
      _remote.addIntoFirestoreDatabase(nome: nome, email: email);
}
