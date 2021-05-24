import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/main.dart';
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
        Duration(
            milliseconds: 4000
        ),
        ()=> Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context)=>MyHomePage(title: "Prueba",)
            )
        )
    );
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    Widget cuerpo= Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imagen_circular("assets/image/splashImage.png"),
          Container(
            margin: EdgeInsets.only(
              top: 40
            ),
            child: Column(
              children: [
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
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 80,
                bottom: 80
            ),
            child: CirculoProgresoIndicador(),
          ),
        ],
      ),
    );

    Widget contenido=Stack(
      children: [
        GradientBack(),
        cuerpo
      ],
    );
    
    return Scaffold(
      body: contenido,
    );
  }
}
