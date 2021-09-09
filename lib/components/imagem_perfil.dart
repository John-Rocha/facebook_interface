import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/utils/paletas_cores.dart';
import 'package:flutter/material.dart';

class ImagemPerfil extends StatelessWidget {
  final String urlImagem;
  final bool foiVisualisado;
  const ImagemPerfil({
    Key? key,
    required this.urlImagem,
    this.foiVisualisado = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: PaletasCores.azulFacebook,
      child: CircleAvatar(
        radius: foiVisualisado ? 22 : 18,
        backgroundImage: CachedNetworkImageProvider(urlImagem),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
