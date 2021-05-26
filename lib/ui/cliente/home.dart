import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/home_fragment.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/menu_fragment.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/profile_fragment.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/search_fragment.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexTap=0;

  final List<Widget> widgetsChildren=[
    HomeFragment(),
    SearchFragment(),
    MenuFragment(),
    ProfileFragment()
  ];



  void onTapTapped(int index){
    setState(() {
      indexTap=index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final menuBarBotton= BottomNavigationBar(
      selectedItemColor: Colors.cyanAccent,
      unselectedItemColor: Colors.white,
      onTap: onTapTapped,
      currentIndex: indexTap,
      selectedLabelStyle: TextStyle(
        color: Color(0xFF6A6A6A),
        fontWeight: FontWeight.bold,
        fontSize: 10,
        fontFamily: 'DancingScript',
      ),
      unselectedLabelStyle: TextStyle(
        color: Color(0xFF6A6A6A),
        fontWeight: FontWeight.bold,
        fontSize: 10,
        fontFamily: 'DancingScript',
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Color(0xFF282828),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Buscar",
          backgroundColor: Color(0xFF282828),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: "Menu",
          backgroundColor: Color(0xFF282828),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Perfil",
          backgroundColor: Color(0xFF282828),
        ),
      ],
    );

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: menuBarBotton
    );
  }
}
