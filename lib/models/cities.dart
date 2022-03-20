import 'package:tasketiya/models/city_details.dart';

class Cities {
  Cities({
    this.links,
    this.page,
    this.perPage,
    this.totalPages,
    this.totalCities,
    this.cities,
    this.countryCode,
    this.status,
  });

  final Links? links;
  final int? page;
  final int? perPage;
  final int? totalPages;
  final int? totalCities;
  final List<City?>? cities;
  final String? countryCode;
  final String? status;

  factory Cities.fromJson(Map<String, dynamic> json) => Cities(
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
        page: json["page"],
        perPage: json["per_page"],
        totalPages: json["total_pages"],
        totalCities: json["total_cities"],
        cities: json["cities"] == null
            ? null
            : List<City>.from(json["cities"].map((x) => City.fromJson(x))),
        countryCode: json["country_code"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "links": links?.toJson(),
        "page": page,
        "per_page": perPage,
        "total_pages": totalPages,
        "total_cities": totalCities,
        "cities": cities == null
            ? null
            : List<dynamic>.from(cities!.map((x) => x?.toJson())),
        "country_code": countryCode,
        "status": status,
      };
}

class City {
  City({
    this.geonameid,
    this.population,
    this.name,
    this.latitude,
    this.longitude,
    this.country,
    this.division,
  });

  final int? geonameid;
  final int? population;
  final String? name;
  final double? latitude;
  final double? longitude;
  final Country? country;
  final Division? division;

  factory City.fromJson(Map<String, dynamic> json) => City(
        geonameid: json["geonameid"],
        population: json["population"],
        name: json["name"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        country:
            json["country"] == null ? null : Country.fromJson(json["country"]),
        division: json["division"] == null
            ? null
            : Division.fromJson(json["division"]),
      );

  Map<String, dynamic> toJson() => {
        "geonameid": geonameid,
        "population": population,
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
        "country": country?.toJson(),
        "division": division?.toJson(),
      };
}

class Links {
  Links({
    this.first,
    this.last,
    this.next,
    this.previous,
  });

  final String? first;
  final String? last;
  final String? next;
  final String? previous;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        first: json["first"],
        last: json["last"],
        next: json["next"],
        previous: json["previous"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "last": last,
        "next": next,
        "previous": previous,
      };
}
