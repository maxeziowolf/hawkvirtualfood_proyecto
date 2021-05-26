import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/card_banner.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/gradient_back.dart';

class MenuFragment extends StatefulWidget {
  @override
  _MenuFragmentState createState() => _MenuFragmentState();
}

class _MenuFragmentState extends State<MenuFragment> {

  @override
  Widget build(BuildContext context) {

    final titulo= Container(
      margin: EdgeInsets.only(top: 40),
      alignment: Alignment.topCenter,
      child: Text(
        "Categorias",
        style: TextStyle(
          color: Color(0xFF3B3400),
          fontWeight: FontWeight.bold,
          fontSize: 50,
          fontFamily: 'DancingScript',
        ),
      ),
    );

    final menu=Container(
      margin: EdgeInsets.only(
        top: 100,
        right: 10,
        left: 10
      ),
      child: ListView(
        children: [
          CardBanner(),
          CardBanner(),
          CardBanner(),
          CardBanner(),
          CardBanner(),
          CardBanner(),
          CardBanner(),
        ],
      ),
    );

    final contenido=Stack(
      children: [
        GradientBack(),
        titulo,
        menu

      ],
    );
    return contenido;
  }
}
