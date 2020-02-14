import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatelessWidget {
  BottomAppBar appBar;

  @override
  Widget build(BuildContext context) => BottomAppBar(
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xfffde9cc),
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Color(0xfffde9cc),
              ),
            ),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity, color: Color(0xfffde9cc)),
            title: Text(
              'Account',
              style: TextStyle(
                color: Color(0xfffde9cc),
              ),
            ),
          ),
        ],
        currentIndex: 0,
        backgroundColor: Color(0xff4a4b7b),
      ),
      notchMargin: -12,
      //clipBehavior: Clip.antiAlias,
      shape: CircularNotchedRectangle(),
    //TODO: Make the notch be V-Shaped
  );

  MainNavigation();
}
