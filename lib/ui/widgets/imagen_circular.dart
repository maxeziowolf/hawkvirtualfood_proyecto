import 'package:flutter/material.dart';

class imagen_circular extends StatelessWidget {
  String pathImage;

  imagen_circular(this.pathImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 120
      ),
      width: 200,
      height: 221,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(pathImage),
        ),
      ),
    );
  }
}
