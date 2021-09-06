import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/models/estoria.dart';
import 'package:flutter/material.dart';

class CartaoEstoria extends StatelessWidget {
  final Estoria estoria;
  const CartaoEstoria({
    Key? key,
    required this.estoria,
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
      ],
    );
  }
}
