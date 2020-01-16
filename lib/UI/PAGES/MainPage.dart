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
                fontFamily: 'Montserrat',
                fontSize: 45,
              ),
            ), // AssetImage(),
          ),
          backgroundColor: Colors.grey[300],
        ),
        body: Stack(
          children: <Widget>[
//            Container(
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  image: NetworkImage(
//                      'https://www.kunst-fuer-alle.de/media_kunst/img/41/g/41_00139613~christian-sell_incident-during-a-cavalry-engagement-in-1870.jpg'),
//                  fit: BoxFit.cover,
//                ),
//              ),
//            ),
            ListView(
              key: Key('MainListViewKey'),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                PostBox(),
                PostBox('Just title test', 'And some preview'),
                PostBox('Hai ca a iesit testu csm',
                    'Lasa descriere acuma ce mai trebuie lol :)))'),
                //collection of cards
              ],
            ),
          ],
        ),
        backgroundColor: Colors.black,
        //bottomNavigationBar: MainNavigation(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          child: Icon(Icons.add),
          elevation: 14,
          backgroundColor: Colors.cyan,
          hoverColor: Colors.red,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
