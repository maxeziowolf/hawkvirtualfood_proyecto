import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/home.dart';

class ButtonBrown extends StatelessWidget {
  String buttonText;
  Function accion;

  ButtonBrown(this.buttonText, this.accion);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: accion,
      child: Container(
        height: 40,
        width: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              colors: [
                Color(0xFFBFAB8B),
                Color(0xFF6F642F),
              ],
              begin: FractionalOffset(0.01, 0.0),
              end: FractionalOffset(2.0, 1.0),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'DancingScript',
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
