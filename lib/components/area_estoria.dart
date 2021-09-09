import 'package:facebook_interface/components/cartao_estoria.dart';
import 'package:facebook_interface/data/data.dart';
import 'package:facebook_interface/models/models.dart';
import 'package:flutter/material.dart';

class AreaEstoria extends StatelessWidget {
  final Usuario usuario;
  final List<Estoria> estorias;
  const AreaEstoria({
    Key? key,
    required this.usuario,
    required this.estorias,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        itemCount: 1 + estorias.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            Estoria estoriaUsuario = Estoria(
              usuario: usuarioAtual,
              urlImagem: usuarioAtual.urlImagem,
            );
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: CartaoEstoria(
                estoria: estoriaUsuario,
                adicionarEstoria: true,
              ),
            );
          }

          Estoria estoria = estorias[index - 1];

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: CartaoEstoria(
              estoria: estoria,
            ),
          );
        },
      ),
    );
  }
}
