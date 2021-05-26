import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/widgets/gradient_back.dart';

class SearchFragment extends StatefulWidget {
  @override
  _SearchFragmentState createState() => _SearchFragmentState();
}

class _SearchFragmentState extends State<SearchFragment> {

  @override
  Widget build(BuildContext context) {
    final buscador=TextFormField(
      decoration: const InputDecoration(
        suffixIcon: Icon(Icons.search,color: Colors.brown,),
        hintText: '¿Qué desea buscar?',
        hintStyle: TextStyle(
            fontFamily: 'DancingScript',
            color: Colors.grey,
            fontWeight: FontWeight.bold
        ),
        labelText: 'Buscar',
        labelStyle: TextStyle(
          color: Colors.brown,
          fontSize: 15,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.brown,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.brown,
          ),
        ),
      ),
      onSaved: (String value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
      },
    );

    final buscadorContainer=Container(
      margin: EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      child: buscador ,
    );

    final contenido=Stack(
      children: [
        GradientBack(),
        buscadorContainer
      ],
    );
    return contenido;
  }
}
