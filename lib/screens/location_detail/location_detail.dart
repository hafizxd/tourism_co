import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../models/location.dart';
import '../../widgets/location_tile.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  static int _locationID;
  LocationDetail(id) {
    _locationID = id;
  }

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text('Location Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageBanner(location.imagePath),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: LocationTile(location: location),
            ),
          ]..addAll(textSection(location)),
        ),
      ),
    );
  }

  List<Widget> textSection(Location location) {
    return location.facts
        .map((locationFact) =>
            TextSection(locationFact.title, locationFact.text))
        .toList();
  }
}
