import 'package:facebook_interface/components/botao_postagem.dart';
import 'package:facebook_interface/models/models.dart';
import 'package:facebook_interface/utils/paletas_cores.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class EstatisticasPostagem extends StatelessWidget {
  final Postagem postagem;
  const EstatisticasPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: PaletasCores.azulFacebook,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                size: 12,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 4),
            Expanded(
              child: Text(
                '${postagem.curtidas}',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(width: 8),
            Text(
              '${postagem.comentarios} comentários',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            SizedBox(width: 8),
            Text(
              '${postagem.compartilhamentos} compartilhamentos',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            )
          ],
        ),
        Divider(thickness: 1.2),
        Row(
          children: [
            BotaoPostagem(
              icone: Icon(
                LineIcons.thumbsUpAlt,
                color: Colors.grey[700],
              ),
              texto: 'Curtir',
              onTap: () {},
            ),
            BotaoPostagem(
              icone: Icon(
                LineIcons.alternateCommentAlt,
                color: Colors.grey[700],
              ),
              texto: 'Comentar',
              onTap: () {},
            ),
            BotaoPostagem(
              icone: Icon(
                LineIcons.share,
                color: Colors.grey[700],
              ),
              texto: 'Compartilhar',
              onTap: () {},
            )
          ],
        ),
      ],
    );
  }
}
