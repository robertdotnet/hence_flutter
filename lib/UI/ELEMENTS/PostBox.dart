import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class PostBox extends StatelessWidget {
  String _title, _previewContent;
  Image _image;

  //TODO: Make an image placeholder for when it is not specified in the constructor
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
          Image(
            image: NetworkImage(
                'https://static.boredpanda.com/blog/wp-content/uploads/2018/10/artist-reimagined-cartoons-black-characters-tyron-handy-fb__700-png.jpg'),
            height: 196,
            width: 360,

          ),
          Text(
            _title,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Text(_previewContent),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      padding: EdgeInsets.fromLTRB(6, 0, 6, 6),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),//all(15),
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
