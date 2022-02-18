import 'package:facebook_interface_aula/data/local/dados.dart';
import 'package:facebook_interface_aula/domain/model/postagem.dart';
import 'package:facebook_interface_aula/presentation/components/area_criar_postagem.dart';
import 'package:facebook_interface_aula/presentation/components/area_estoria.dart';
import 'package:facebook_interface_aula/presentation/components/cartao_postagem.dart';
import 'package:flutter/material.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          sliver: SliverToBoxAdapter(
            child: AreaEstoria(
              usuario: usuarioAtual,
              estorias: estorias,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: AreaCriarPostagem(
            usuario: usuarioAtual,
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, indice) {
                Postagem postagem = postagens[indice];
                return CartaoPostagem(postagem: postagem);
              },
              childCount: postagens.length,
            )),
      ],
    );
  }
}
