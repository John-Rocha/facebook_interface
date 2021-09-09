import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/components/imagem_perfil.dart';
import 'package:facebook_interface/models/estoria.dart';
import 'package:facebook_interface/utils/paletas_cores.dart';
import 'package:flutter/material.dart';

class CartaoEstoria extends StatelessWidget {
  final Estoria estoria;
  final bool adicionarEstoria;
  const CartaoEstoria({
    Key? key,
    required this.estoria,
    this.adicionarEstoria = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          child: CachedNetworkImage(
            imageUrl: estoria.urlImagem,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: PaletasCores.degradeEstoria,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: adicionarEstoria
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.add),
                    iconSize: 30,
                    color: PaletasCores.azulFacebook,
                    onPressed: () {},
                  ),
                )
              : ImagemPerfil(
                  urlImagem: estoria.usuario.urlImagem,
                  foiVisualisado: estoria.foiVisualizado,
                ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            adicionarEstoria ? "Criar Story" : estoria.usuario.nome,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
