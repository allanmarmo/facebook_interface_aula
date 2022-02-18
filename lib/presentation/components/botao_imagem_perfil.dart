import 'package:facebook_interface_aula/domain/model/usuario.dart';
import 'package:facebook_interface_aula/presentation/components/imagem_perfil.dart';
import 'package:flutter/material.dart';

class BotaoImagemPerfil extends StatelessWidget {
  const BotaoImagemPerfil({
    Key? key,
    required this.usuario,
    required this.onTap,
  }) : super(key: key);

  final Usuario usuario;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImagemPerfil(
            urlImagem: usuario.urlImagem,
            foiVisualizado: true,
          ),
          const SizedBox(
            width: 4,
          ),
          Flexible(
            child: Text(
              usuario.nome,
              style: const TextStyle(
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
