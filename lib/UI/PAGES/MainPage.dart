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
              child: Container(
            height: 53,
            width: 100,
            //margin: EdgeInsets.fromLTRB(2, 8, 2, 2),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/hencelogo.png')),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              //color: Colors.redAccent,
            ),
          )),
          backgroundColor: Colors.white,
          //Color.fromRGBO(55, 9, 105, 1),
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
                PostBox(
                    'New IPhone released with 6 cameras', 'asdfasdfadfadfadf'),
                //collection of cards
              ],
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(87, 12, 168, 1),
        //bottomNavigationBar: MainNavigation(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          elevation: 15,
          backgroundColor: Color.fromRGBO(55, 9, 105, 1),
          tooltip: 'Add a new post',
          hoverColor: Colors.red,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: MainNavigation(),
      ),
    );
  }
}
