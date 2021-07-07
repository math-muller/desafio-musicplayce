import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/models.dart';

class RemoteLoadMovies {
  final _firestore = FirebaseFirestore.instance;

  Stream<List<MovieModel>> load() {
    return _firestore.collection('filmes').snapshots().map((snapshot) =>
        snapshot.docs
            .map((doc) => MovieModel.fromMap(doc.data(), doc.id))
            .toList());
  }
}
