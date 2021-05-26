import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/home.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/login_screen.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/splash_screen.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/button_brown.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/gradient_back.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              icon: Icon(Icons.email,color: Colors.brown,),
              hintText: 'Ingrese su correo',
              hintStyle: TextStyle(
                  fontFamily: 'DancingScript',
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
              ),
              labelText: 'Correo',
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
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.lock_clock,color: Colors.brown,),
              hintText: 'Ingrese su contraseña',
              hintStyle: TextStyle(
                  fontFamily: 'DancingScript',
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
              ),
              labelText: 'Confirmar ontraseña',
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



    final contenido = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: header,
        ),
        nombre,
        Spacer(),
        Text(
          "Registro",
          style: TextStyle(
            color: Color(0xFF3B3400),
            fontWeight: FontWeight.bold,
            fontSize: 60,
            fontFamily: 'DancingScript',
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 60,
            top: 10,
          ),
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            "Ingrese los siguientes datos",
            style: TextStyle(
              color: Color(0xFF3B3400),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'DancingScript',
            ),
          ),
        ),
        Spacer(),
        formulario,
        Spacer(),
        ButtonBrown("Registrarse",()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()))),
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

