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
//          Container(
//            child: ClipRect(
//              child: Image(
//                image: NetworkImage(
//                    'https://static.boredpanda.com/blog/wp-content/uploads/2018/10/artist-reimagined-cartoons-black-characters-tyron-handy-fb__700-png.jpg'),
//                height: 196,
//                width: 360,
//              ),
//
////              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
//
//            ),
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.all(Radius.circular(20.0)),
//            ),
//          ),
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
              color: Colors.redAccent,
            ),
          ),
          Text(
            _title,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          Text(_previewContent,
              style: TextStyle(
                color: Colors.white,
              )),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      padding: EdgeInsets.fromLTRB(6, 0, 6, 6),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5), //all(15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(55, 9, 105, 1),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
