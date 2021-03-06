import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/components/cabecalho_postagem.dart';
import 'package:facebook_interface/components/estatisticas_postagem.dart';
import 'package:facebook_interface/models/models.dart';
import 'package:flutter/material.dart';

class CartaoPostagem extends StatelessWidget {
  final Postagem postagem;
  const CartaoPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          // Cabeçalho
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // cabeçalho
                CabecalhoPostagem(postagem: postagem),
                // descrição
                Text(postagem.descricao)
              ],
            ),
          ),

          // Imagem da postagem
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(
              imageUrl: postagem.urlImagem,
            ),
          ),

          // Area de estatística
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: EstatisticasPostagem(
              postagem: postagem,
            ),
          )
        ],
      ),
    );
  }
}
