import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/card_image.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/gradient_back.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {

  final titulo=Container(
    child: Text(
      "Los platillos mas populares",
      style: TextStyle(
        color: Color(0xFF6A6A6A),
        fontWeight: FontWeight.bold,
        fontSize: 15,
        fontFamily: 'DancingScript',
      ),
    ),
  );

  final contenido=Column(
    children: [
      CardImage("assets/image/banner_promocion.png", 300, 500,20),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          GradientBack(),
          contenido
        ],
      ),
    );
  }
}
