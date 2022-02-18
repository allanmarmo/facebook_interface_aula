import 'package:facebook_interface_aula/data/local/dados.dart';
import 'package:facebook_interface_aula/domain/model/postagem.dart';
import 'package:facebook_interface_aula/presentation/components/area_criar_postagem.dart';
import 'package:facebook_interface_aula/presentation/components/area_estoria.dart';
import 'package:facebook_interface_aula/presentation/components/button_circle.dart';
import 'package:facebook_interface_aula/presentation/components/cartao_postagem.dart';
import 'package:facebook_interface_aula/util/paleta_cores.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          // expandedHeight: 250,
          floating: true,
          centerTitle: false,
          title: const Text(
            "facebook-M",
            style: TextStyle(
              color: PaletaCores.azulFacebook,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              letterSpacing: -1.2,
            ),
          ),
          actions: [
            ButtonCircle(
              icone: Icons.search,
              iconeTamanho: 30,
              onPressed: () {},
            ),
            ButtonCircle(
              icone: LineIcons.facebookMessenger,
              iconeTamanho: 30,
              onPressed: () {},
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: AreaCriarPostagem(
            usuario: usuarioAtual,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          sliver: SliverToBoxAdapter(
            child: AreaEstoria(
              usuario: usuarioAtual,
              estorias: estorias,
            ),
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
