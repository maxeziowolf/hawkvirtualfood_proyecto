import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/main.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/login_screen.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/circulo_progreso_indicador.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/gradient_back.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/imagen_circular.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/gradient_back.dart';

class splashScrren extends StatefulWidget {
  @override
  _splashScrrenState createState() => _splashScrrenState();
}

class _splashScrrenState extends State<splashScrren> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
        Duration(milliseconds: 4000),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: //(context)=>MyHomePage(title: "Prueba",)
                    (context) => Login())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cuerpo = SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FractionallySizedBox(
              widthFactor: .5,
              child: imagen_circular("assets/image/splashImage.png"),
            ),
          ),
          Spacer(),
          Text(
            "HawkVirtualFood",
            style: TextStyle(
              color: Color(0xFF3B3400),
              fontWeight: FontWeight.bold,
              fontSize: 40,
              fontFamily: 'DancingScript',
            ),
          ),
          Text(
            " \"La parte real de tu menu\"",
            style: TextStyle(
              color: Color(0xFF3B3400),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'DancingScript',
            ),
          ),
          Spacer(),
          CirculoProgresoIndicador(),
          Spacer(),
        ],
      ),
    );

    final contenido = Stack(
      children: [GradientBack(), cuerpo],
    );

    return Scaffold(
      body: contenido,
    );
  }
}
