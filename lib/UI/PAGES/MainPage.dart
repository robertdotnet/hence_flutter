import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hence_flutter/UI/ELEMENTS/MainNavigation.dart';
import 'package:hence_flutter/UI/ELEMENTS/PostBox.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hence',
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            child: Center(
              child: Container(
                height: 53,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/hencelogo.png')),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
              ),
            ),
            decoration: BoxDecoration(
              gradient: new RadialGradient(
                colors: [
                  Color(0xfffde9cc),
                  Color(0xcf4a4b7b),
                ],
                radius: 2,
              ),
            ),
          ),
          backgroundColor:
              Color.alphaBlend(Color(0xfffde9cc), Color(0xcf4a4b7b)),
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              key: Key('MainListViewKey'),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                PostBox(),
                PostBox('Just title test', 'And some preview'),
                PostBox('Hai ca a iesit testu csm',
                    'Lasa descriere acuma ce mai trebuie lol :)))'),
                PostBox(
                    'New IPhone released with 6 cameras', 'asdfasdfadfadfadf'),
                PostBox('Title for test', 'random'),
              ],
            ),
          ],
        ),
        backgroundColor: Color(0xff3c3846),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Color(0xfffde9cc),
          ),
          elevation: 4,
          backgroundColor: Color(0xff3c3846),
          tooltip: 'Add a new post',
          clipBehavior: Clip.antiAlias,
          shape: new BeveledRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: MainNavigation(),
      ),
    );
  }
}
