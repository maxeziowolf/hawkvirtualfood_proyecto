import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/details.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/card_image.dart';

class CardPlatillos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imagen= CardImage("assets/image/banner_promocion.png", 60, 80, 10);

    final informacion=Container(
      margin: EdgeInsets.only(
        left: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Los platillos mas populares",
            style: TextStyle(
              color: Color(0xFFFFFCFC),
              fontWeight: FontWeight.bold,
              fontSize:15,
              fontFamily: 'DancingScript',
            ),
          ),
          Text(
            "\nLorem ipsum dolor sit amet, consectetur adipiscing \n"
                "elit. Mauris dolor erat, vehicula vel eros ut, fringilla \n",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
              fontSize:10,
              fontFamily: 'DancingScript',
            ),
          ),
          Text(
            "Costo: \$200.00",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
              fontSize:10,
              fontFamily: 'DancingScript',
            ),
          )
        ],
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
      child: Row(
        children: [
          imagen,
          informacion
        ],
      ),
    );
    
    return InkWell(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen())),
      child: card,
    );
  }
}
