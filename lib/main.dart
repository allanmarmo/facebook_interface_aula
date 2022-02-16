import 'package:facebook_interface_aula/presentation/screens/home.dart';
import 'package:facebook_interface_aula/util/paleta_cores.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Facebook",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: PaletaCores.scaffold),
    home: Home(),
  ));
}
