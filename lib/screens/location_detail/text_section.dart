import 'package:flutter/material.dart';

const _hPad = 16.0;

class TextSection extends StatelessWidget {
  String _title;
  String _text;

  TextSection(this._title, this._text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
          child: Text(
            _title,
            style: Theme.of(context).textTheme.title,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
          child: Text(
            _text,
            style: Theme.of(context).textTheme.body1,
          ),
        ),
      ],
    );
  }
}
