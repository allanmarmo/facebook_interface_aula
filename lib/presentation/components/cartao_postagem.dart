import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_aula/domain/model/modelos.dart';
import 'package:facebook_interface_aula/presentation/components/cabecalho_postagem.dart';
import 'package:facebook_interface_aula/presentation/components/estatisticas_postagem.dart';
import 'package:flutter/material.dart';

class CartaoPostagem extends StatelessWidget {
  const CartaoPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  final Postagem postagem;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          // Cabeçalho
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Cabeçalho
                CabecalhoPostagem(postagem: postagem),

                // Descrição
                Text(postagem.descricao),
              ],
            ),
          ),

          // Imagem postagem
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(
              imageUrl: postagem.urlImagem,
            ),
          ),

          // Área de estátisticas
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: EstatisticasPostagem(postagem: postagem),
          ),
        ],
      ),
    );
  }
}
