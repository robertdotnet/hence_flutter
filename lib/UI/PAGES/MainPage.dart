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
          title: Center(
            child: Text(
              'Hence',
              style: TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontFamily: 'Arabic',
                fontSize: 40,
              ),
            ), // AssetImage(),
          ),
          backgroundColor: Colors.cyanAccent,
        ),
        body: Stack(
          //TODO: make a scrollview somehow . so you can fucking scroll through it :)
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.kunst-fuer-alle.de/media_kunst/img/41/g/41_00139613~christian-sell_incident-during-a-cavalry-engagement-in-1870.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  PostBox(),
                  PostBox('Just title test','And some preview'),
                  PostBox('Hai ca a iesit testu csm','Lasa descriere acuma ce mai trebuie lol :)))'),
                  //collection of cards

                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.lightBlueAccent,
        //bottomNavigationBar: MainNavigation(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('button pressed');
          },
          child: Icon(Icons.add),
          elevation: 10,
          backgroundColor: Colors.cyan,
          hoverColor: Colors.red,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
