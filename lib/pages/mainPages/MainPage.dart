import 'package:flamengo/pages/mainPages/mainBottomNavigationPage/CategoriesPage.dart';
import 'package:flamengo/pages/mainPages/mainBottomNavigationPage/FavoritesPage.dart';
import 'package:flamengo/pages/mainPages/mainBottomNavigationPage/HomePage.dart';
import 'package:flamengo/pages/mainPages/mainBottomNavigationPage/MessagesPage.dart';
import 'package:flamengo/pages/mainPages/mainBottomNavigationPage/ProfilePage.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex =2;
  final List<Widget> _children=[

    ProfilePage(),
    MessagesPage(),
    HomePage(),
    FavoritesPage(),
    CategoriesPage()
  ];

  _onTappedBar(int index){
    setState(() {
      _currentIndex =index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          showSelectedLabels: true,
          currentIndex: _currentIndex,
          onTap: _onTappedBar,
          items: [
            BottomNavigationBarItem(
              icon:Icon( Icons.person),
              title:Text("Profile"),
            ),
            BottomNavigationBarItem(
              icon:Icon( Icons.message),
              title:Text("Messages"),
            ),
            BottomNavigationBarItem(
              icon:Icon( Icons.home),
              title:Text("Home"),
            ),
            BottomNavigationBarItem(
              icon:Icon( Icons.favorite),
              title:Text("Favorites"),
            ),
            BottomNavigationBarItem(
              icon:Icon( Icons.category),
              title:Text("categories"),
            ),
          ]
      ),

    );
  }
}
