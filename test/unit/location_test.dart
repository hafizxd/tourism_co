import 'package:flutter_test/flutter_test.dart';
import 'package:my_tourismco_app/models/location.dart';

void main() {
  test('Locations can be fetched', () {
    final locations = Location.fetchAll();

    expect(locations.length, greaterThan((0)));
  });

  test('Location can be fetched by ID', () {
    final locations = Location.fetchAll();

    for (Location l in locations) {
      final fetchedLocation = Location.fetchById(l.id);
      expect(fetchedLocation, isNotNull);
      expect(fetchedLocation.id, equals(l.id));
    }
  });
}
