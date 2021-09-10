import 'package:facebook_interface/components/area_criar_postagem.dart';
import 'package:facebook_interface/components/botao_circulo.dart';
import 'package:facebook_interface/components/area_estoria.dart';
import 'package:facebook_interface/components/cartao_postagem.dart';
import 'package:facebook_interface/data/data.dart';
import 'package:facebook_interface/models/models.dart';
import 'package:facebook_interface/utils/paletas_cores.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            //expandedHeight: 250,
            floating: true,
            centerTitle: false,
            title: Text(
              'facebook',
              style: TextStyle(
                color: PaletasCores.azulFacebook,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                letterSpacing: -1.2,
              ),
            ),
            actions: [
              BotaoCirculo(
                icone: Icons.search,
                iconeTamanho: 30,
                onPressed: () {},
              ),
              BotaoCirculo(
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
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: AreaEstoria(
                usuario: usuarioAtual,
                estorias: estorias,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                Postagem postagem = postagens[index];
                return CartaoPostagem(
                  postagem: postagem,
                );
              },
              childCount: postagens.length,
            ),
          ),
        ],
      ),
    );
  }
}
