import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RemoteAddAccount {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance.collection('users');

  Future<void> add({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (error) {
      if (error.code == 'weak-password') {
        throw Exception('A senha fornecida é muito fraca.');
      } else if (error.code == 'email-already-in-use') {
        throw Exception('A conta já existe para esse e-mail.');
        
      }
    }
  }

  Future<void> addIntoFirestoreDatabase({
    required String nome,
    required String email,
  }) async {
    _firestore.doc(_auth.currentUser!.uid).set({'nome': nome, 'email': email});
  }
}
