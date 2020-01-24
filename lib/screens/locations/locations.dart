import 'package:flutter/material.dart';

import '../../models/location.dart';
import '../../app.dart';
import '../../widgets/image_banner.dart';
import './tile_overlay.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) =>
            _itemBuilder(context, locations[index]),
      ),
    );
  }

  _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
        onTap: () => _onLocationTap(context, location.id),
        child: Container(
          height: 245.0,
          child: Stack(
            children: <Widget>[
              ImageBanner(location.imagePath, 245.0),
              TileOverlay(location),
            ],
          ),
        ));
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(
      context,
      LocationDetailRoute,
      arguments: {'id': locationID},
    );
  }
}
