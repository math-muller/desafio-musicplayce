import './translation.dart';

class PtBr implements Translation {
  // LOGIN PAGE
  String get welcomeBack => 'Olá\nBem vindo de volta!';
  String get newAroundHere => 'Novo por aqui?';
  String get register => 'Cadastre-se';
  String get enterButton => 'Entrar';

  // REGISTER PAGE
  String get signupToStart => 'Inscreva-se para começar';
  String get registerButton => 'Cadastrar';

  // MOVIES PAGE
  String get hi => 'Olá,\n';
  String get hereIsYourMovieList => 'Aqui está sua lista de filmes!';

  // SHARED
  String get name => 'Nome';
  String get email => 'Email';
  String get password => 'Senha';
}
