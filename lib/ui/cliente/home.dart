import 'package:flutter/material.dart';
import 'package:hawkvirtualfood_proyecto/ui/cliente/home_fragment.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexTap=0;

  /*final List<Widget> widgetsChildren=[
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];*/



  void onTapTapped(int index){
    setState(() {
      indexTap=index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final menuBarBotton= BottomNavigationBar(
      selectedItemColor: Colors.brown,
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
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: "Menu",
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Perfil",
          backgroundColor: Colors.blue,
        ),
      ],
    );

    return Scaffold(
      body: HomeFragment(),
      bottomNavigationBar: menuBarBotton
    );
  }
}
