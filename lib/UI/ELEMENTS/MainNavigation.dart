import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home
            , color: Colors.white,),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity,
            color: Colors.white),
            title: Text(
              'Account',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
        currentIndex: 0,
        backgroundColor: Color.fromRGBO(55, 9, 105, 1),
      );

  MainNavigation();
}
