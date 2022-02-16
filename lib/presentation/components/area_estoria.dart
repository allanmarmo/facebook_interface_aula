import 'package:facebook_interface_aula/data/local/dados.dart';
import 'package:facebook_interface_aula/domain/model/modelos.dart';
import 'package:facebook_interface_aula/presentation/components/cartao_estoria.dart';
import 'package:flutter/material.dart';

class AreaEstoria extends StatelessWidget {
  const AreaEstoria({
    Key? key,
    required this.usuario,
    required this.estorias,
  }) : super(key: key);

  final Usuario usuario;
  final List<Estoria> estorias;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + estorias.length,
          itemBuilder: (context, indice) {
            if (indice == 0) {
              Estoria estoriaUsuario = Estoria(
                usuario: usuarioAtual,
                urlImagem: usuarioAtual.urlImagem,
              );

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: CartaoEstoria(
                  adicionarEstoria: true,
                  estoria: estoriaUsuario,
                ),
              );
            }

            Estoria estoria = estorias[indice - 1];

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CartaoEstoria(
                estoria: estoria,
              ),
            );
          }),
    );
  }
}
