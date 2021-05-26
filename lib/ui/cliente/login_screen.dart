import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/splash_screen.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/button_brown.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/gradient_back.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final header = Container(
      margin: EdgeInsets.only(top: 30),
      width: 100,
      height: 121,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/image/splashImage.png"),
        ),
      ),
    );

    final nombre = Column(
      children: [
        Text(
          "HawkVirtualFood",
          style: TextStyle(
            color: Color(0xFF3B3400),
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'DancingScript',
          ),
        ),
        Text(
          " \"La parte real de tu menu\"",
          style: TextStyle(
            color: Color(0xFF3B3400),
            fontWeight: FontWeight.bold,
            fontSize: 10,
            fontFamily: 'DancingScript',
          ),
        ),
      ],
    );

    final formulario=Container(
      margin: EdgeInsets.only(left: 60,right: 60),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person,color: Colors.brown,),
              hintText: 'Ingrese su usuario',
              hintStyle: TextStyle(
                fontFamily: 'DancingScript',
                color: Colors.grey,
                fontWeight: FontWeight.bold
              ),
              labelText: 'Usuario',
              labelStyle: TextStyle(
                color: Colors.brown,
                fontSize: 15,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.brown,
                ),
              ),
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return (value != null && value.contains('@') ) ? 'El correo debe tener la forma: ejemplo@empresa.com' : null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.lock,color: Colors.brown,),
              hintText: 'Ingrese su contraseña',
              hintStyle: TextStyle(
                  fontFamily: 'DancingScript',
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
              ),
              labelText: 'Contraseña',
              labelStyle: TextStyle(
                color: Colors.brown,
                fontSize: 15,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.brown,
                ),
              ),
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
          ),
        ],
      ),
    );

    final textoRegistrar=Container(
      margin: EdgeInsets.only(left: 50,right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Text(
              " Registrate",
              style: TextStyle(
                color: Color(0xFF6A6A6A),
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: 'DancingScript',
              ),
            ),
            onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => splashScrren())),
          ),
          InkWell(
            child: Text(
              " ¿Olvidaste tu contraseña?",
              style: TextStyle(
                color: Color(0xFF6A6A6A),
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: 'DancingScript',
              ),
            ),
            onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => splashScrren())),
          ),
        ],
      ),
    );

    final contenido = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: header,
        ),
        nombre,
        Spacer(),
        Text(
          "Login",
          style: TextStyle(
            color: Color(0xFF3B3400),
            fontWeight: FontWeight.bold,
            fontSize: 60,
            fontFamily: 'DancingScript',
          ),
        ),
        Spacer(),
        formulario,
        Spacer(),
        ButtonBrown("Ingresar"),
        Spacer(),
        textoRegistrar,
        Spacer(),
      ],
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [GradientBack(), contenido],
      ),
    );
  }
}
