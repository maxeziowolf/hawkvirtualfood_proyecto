import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFEEDDAC),
            ],
            begin: FractionalOffset(0.01, 0.0),
            end: FractionalOffset(2.0, 1.0),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        ),
      ),
    );
  }
}
