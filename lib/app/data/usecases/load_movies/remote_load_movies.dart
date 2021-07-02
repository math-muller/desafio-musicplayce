import 'package:cloud_firestore/cloud_firestore.dart';

class RemoteLoadMovies {
  final _firestore = FirebaseFirestore.instance.collection('filmes');

  Stream<QuerySnapshot<Map<String, dynamic>>> load() {
    return _firestore.snapshots();
  }
}
