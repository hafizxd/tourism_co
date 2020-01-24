import 'package:flutter/material.dart';

import 'screens/locations/locations.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      onGenerateRoute: _route(),
      theme: _theme(),
    );
  }

  RouteFactory _route() {
    return (setting) {
      final Map<String, dynamic> arguments = setting.arguments;
      Widget screen;
      switch (setting.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }

      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: appBarTextStyle),
          color: AppBarBackgroundColor),
      textTheme: TextTheme(
        title: titleTextStyle,
        subtitle: subtitleTextStyle,
        caption: captionTextStyle,
        body1: body1TextStyle,
      ),
    );
  }
}
