import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/card_image.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/card_platillo.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/gradient_back.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {


  @override
  Widget build(BuildContext context) {
    final titulo=Container(
      child: Text(
        "Los platillos mas populares",
        style: TextStyle(
          color: Color(0xFF000000),
          fontWeight: FontWeight.bold,
          fontSize:30,
          fontFamily: 'DancingScript',
        ),
      ),
    );

    final platillos = Container(
      margin: EdgeInsets.only(
        top: 250,
        left: 20,
        right: 20
      ),
      child: ListView(
        children: [
          CardPlatillos(),
          CardPlatillos(),
          CardPlatillos(),
          CardPlatillos(),
          CardPlatillos(),
          CardPlatillos(),
        ],
      ),
    );

    final contenido=Column(
      children: [
        CardImage("assets/image/banner_promocion.png", 150, 500,30),
        titulo,
      ],
    );

    return Container(
      child: Stack(
        children: [
          GradientBack(),
          contenido,
          platillos
        ],
      ),
    );
  }
}
