import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class PostBox extends StatelessWidget {
  String _title, _previewContent;
  Image _image;

  PostBox(
      [String title = 'Article Title',
      String previewContent = 'Preview Content',
      Image image]) {
    this._title = title;
    this._previewContent = previewContent;
    this._image = image;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 180,
            width: 360,
            margin: EdgeInsets.fromLTRB(2, 8, 2, 2),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://static.boredpanda.com/blog/wp-content/uploads/2018/10/artist-reimagined-cartoons-black-characters-tyron-handy-fb__700-png.jpg')),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              //color: Colors.redAccent,
            ),
          ),
          Text(
            _title,
            style: TextStyle(
              fontSize: 25,
              color: Color(0xfffde9cc),
            ),
          ),
          Text(_previewContent,
              style: TextStyle(
                color: Color(0xfffde9cc),
              )),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      padding: EdgeInsets.fromLTRB(6, 0, 6, 6),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10), //all(15),
      decoration: BoxDecoration(
        color: Color(0xff4a4b7b),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topLeft: Radius.circular(20),),
//        boxShadow: [BoxShadow(
//          blurRadius: 2,
//          color: Colors.purple[100],
//          spreadRadius: 0.2,
//          offset: Offset.fromDirection(16),
//        ),
//          BoxShadow(
//            blurRadius: 1,
//            color: Colors.deepPurple,
//            spreadRadius: 0.2,
//            offset: Offset.fromDirection(-8),
//          )],
      ),
    );
  }
}
