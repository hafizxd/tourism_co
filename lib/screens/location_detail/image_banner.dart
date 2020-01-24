import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _imagePath;
  ImageBanner(this._imagePath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.grey),
      constraints: BoxConstraints.expand(
        height: 200,
      ),
      child: Image.asset(
        _imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
