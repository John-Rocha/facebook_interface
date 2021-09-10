import 'package:facebook_interface/telas/home.dart';
import 'package:facebook_interface/utils/paletas_cores.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Facebook",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: PaletasCores.scaffold,
      ),
      home: Home(),
    ),
  );
}
