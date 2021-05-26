import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/button_brown.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/card_image.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/gradient_back.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imagen = CardImage("assets/image/categoria.jpg", 300, 300, 5);

    final titulo= Center(
      child: Text(
        "Nombre del producto",
        style: TextStyle(
          color: Color(0xFF000000),
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: 'DancingScript',
        ),
      ),
    );

    final descripcion= Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut ligula justo. Donec tellus justo, pulvinar nec ligula non, mollis efficitur purus. Sed tortor ante, commodo ac tortor dignissim, ultrices ornare sapien. Duis malesuada ac lorem ut interdum. Nam sodales diam et porta faucibus. Aenean feugiat vel nibh sed bibendum. ",
      textAlign: TextAlign.justify,
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: Color(0xFF000000),
        fontWeight: FontWeight.bold,
        fontSize: 15,
        fontFamily: 'DancingScript',
      ),
    );

    final precio= Text(
      "Precio: \$200.00",
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Color(0xFF000000),
        fontWeight: FontWeight.bold,
        fontSize: 15,
        fontFamily: 'DancingScript',
      ),
    );

    final contenido = Stack(
      children: [
        GradientBack(),
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20
          ),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              imagen,
              Spacer(),
              titulo,
              Spacer(),
              descripcion,
              Spacer(),
              precio,
              Spacer(),
              ButtonBrown("Ordenar", ()=>(print("Hola"))),
              Spacer(),
              ButtonBrown("Ver platillo en VR", ()=>(print("Hola"))),
              Spacer(),
            ],
          ),
        )
      ],
    );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF313131),
        title: Text(
          "Detalles de producto",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'DancingScript',
          ),
        ),
      ),
      body: contenido,
    );
  }
}
