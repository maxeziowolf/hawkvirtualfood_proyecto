import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/card_image.dart';

class CardBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imagen= CardImage("assets/image/categoria.jpg", 90, 350, 10);

    final titulo= Text(
      "Categorias",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 60,
        fontFamily: 'DancingScript',
      ),
    );

    final card= Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF959595),
                Color(0xFF020202),
              ],
              begin: FractionalOffset(0.001, 0.9),
              end: FractionalOffset(0.6, 0.5),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          ),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
      ),
      child: Stack(
        children: [
          Center(
            child: imagen,
          ),
          Container(
            margin: EdgeInsets.only(top:10),
            child: Center(
              child: titulo ,
            ),
          )
        ],
      )
    );
    
    return card;
  }
}
