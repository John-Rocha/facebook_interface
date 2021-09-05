import 'package:facebook_interface/components/AreaCriarPostagem.dart';
import 'package:facebook_interface/components/BotaoCirculo.dart';
import 'package:facebook_interface/data/data.dart';
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
          SliverToBoxAdapter(
            child: Container(
              height: 2000,
              color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
