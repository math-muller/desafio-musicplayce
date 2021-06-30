import 'package:firebase_auth/firebase_auth.dart';

class RemoteAuthentication {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> auth({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found') {
        throw Exception('Nenhum usuário encontrado');
      } else if (error.code == 'wrong-password') {
        throw Exception('Senha incorreta');
      }
    }
  }
}
