import 'package:flutter/material.dart';

class CirculoProgresoIndicador extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.brown),
    );
  }
}
