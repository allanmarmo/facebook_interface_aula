import 'package:facebook_interface_aula/domain/model/modelos.dart';
import 'package:facebook_interface_aula/presentation/components/imagem_perfil.dart';
import 'package:flutter/material.dart';

class CabecalhoPostagem extends StatelessWidget {
  const CabecalhoPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  final Postagem postagem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImagemPerfil(
          urlImagem: postagem.usuario.urlImagem,
          foiVisualizado: true,
        ),
        const SizedBox(
          width: 8,
        ),

        // Informações do Usuário
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postagem.usuario.nome,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    "${postagem.tempoAtras} - ",
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
            ))
      ],
    );
  }
}
