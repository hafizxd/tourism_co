import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String imagePath;
  final double height;

  ImageBanner(this.imagePath, this.height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      constraints: BoxConstraints.expand(height: height),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }
}
