class MovieModel {
  final String title;
  final String synopsis;
  final String thumb;

  MovieModel({
    required this.title,
    required this.synopsis,
    required this.thumb,
  });

  factory MovieModel.fromMap(Map<String, dynamic> map, String id) {
    return MovieModel(
      title: map['titulo'],
      synopsis: map['sinopse'],
      thumb: map['thumb'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'titulo': title,
      'sinopse': synopsis,
      'thumb': thumb,
    };
  }
}
