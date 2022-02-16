import 'package:facebook_interface_aula/domain/model/usuario.dart';

class Estoria {
  Usuario usuario;
  String urlImagem;
  bool foiVisualizado;

  Estoria({
    required this.usuario,
    required this.urlImagem,
    this.foiVisualizado = false,
  });
}
