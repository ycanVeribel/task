import 'package:flutter_test/flutter_test.dart';
import 'package:tasketiya/models/cities.dart';
import 'package:tasketiya/models/city_details.dart';

void main() {
  test(
      'Given user on the cities page with cities list When user typed "ka" on searchbar',
      () {
    final List<City> cities = [
      City(
          name: "Trabzon", population: 3535353, division: Division(code: "61")),
      City(name: "Ankara", population: 5547443, division: Division(code: "06")),
      City(name: "Kars", population: 1342873, division: Division(code: "36")),
    ];

    final List<City> filteredCities = [];

    for (var i = 0; i < cities.length; i++) {
      if (cities[i].name!.toLowerCase().contains("ka") ||
          cities[i].population.toString().contains("ka") ||
          cities[i].division!.code!.toLowerCase().contains("ka")) {
        filteredCities.add(cities[i]);
      }
    }
    expect(filteredCities.length, 2);
  });
}
