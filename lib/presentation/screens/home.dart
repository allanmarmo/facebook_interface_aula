import 'package:facebook_interface_aula/presentation/screens/home_desktop.dart';
import 'package:facebook_interface_aula/presentation/screens/home_mobile.dart';
import 'package:facebook_interface_aula/presentation/screens/home_tablet.dart';
import 'package:facebook_interface_aula/util/responsivo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsivo(
        mobile: HomeMobile(),
        tablet: HomeTablet(),
        desktop: HomeDesktop(),
      ),
    );
  }
}
