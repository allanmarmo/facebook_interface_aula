import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_aula/util/paleta_cores.dart';
import 'package:flutter/material.dart';

class ImagemPerfil extends StatelessWidget {
  const ImagemPerfil({
    Key? key,
    required this.urlImagem,
    this.foiVisualizado = false,
  }) : super(key: key);

  final String urlImagem;
  final bool foiVisualizado;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: PaletaCores.azulFacebook,
      child: CircleAvatar(
        radius: foiVisualizado ? 22 : 18,
        backgroundImage: CachedNetworkImageProvider(urlImagem),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
