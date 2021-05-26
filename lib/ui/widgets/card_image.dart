import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  String pathImage;
  double height,width,margin;

  CardImage(this.pathImage,this.height,this.width,this.margin);

  @override
  Widget build(BuildContext context) {

    final card= Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        top: margin,
        bottom: margin,
        left: 10,
        right: 10
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          ),
        ]
      ),
    );
    return card;
  }
}
