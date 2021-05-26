import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/button_brown.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/gradient_back.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/imagen_circular.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/login_screen.dart';

class ProfileFragment extends StatefulWidget {
  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  bool isSwitched = false;


  @override
  Widget build(BuildContext context) {

    final bienvenida=Container(
      margin: EdgeInsets.only(top: 40),
      alignment: Alignment.topCenter,
      child: Text(
        "Bienvenido estimado \"usuario\"",
        style: TextStyle(
          color: Color(0xFF000000),
          fontWeight: FontWeight.bold,
          fontSize: 40,
          fontFamily: 'DancingScript',
        ),
      ),
    );

    final menssaje=Container(
      margin: EdgeInsets.only(top: 40),
      alignment: Alignment.topLeft,
      child: Text(
        "¿Desea resibir publicidad?",
        style: TextStyle(
          color: Color(0xFF585656),
          fontWeight: FontWeight.bold,
          fontSize: 15,
          fontFamily: 'DancingScript',
        ),
      ),
    );

    final opcion=Container(
      alignment: Alignment.topLeft,
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
        activeTrackColor: Colors.brown,
        activeColor: Colors.orangeAccent,
      ),
    );

    final imagen= Container(
      alignment: Alignment.topCenter,
      child: imagen_circular("assets/image/chef.png"),
    );

    final contenido=Stack(
      children: [
        GradientBack(),
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20
          ),
          child: Column(
            children: [
              imagen,
              bienvenida,
              menssaje,
              opcion,
              ButtonBrown("Cerrar session", ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login())))
            ],
          ),
        )
      ],
    );

    return contenido;
  }
}

