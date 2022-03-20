class CityDetails {
  CityDetails({
    this.geonameid,
    this.name,
    this.population,
    this.latitude,
    this.longitude,
    this.division,
    this.country,
    this.currency,
    this.timezone,
    this.wikiId,
    this.wikiUrl,
    this.status,
  });

  final int? geonameid;
  final String? name;
  final int? population;
  final double? latitude;
  final double? longitude;
  final Division? division;
  final Country? country;
  final Currency? currency;
  final Timezone? timezone;
  final String? wikiId;
  final String? wikiUrl;
  final String? status;

  factory CityDetails.fromJson(Map<String, dynamic> json) => CityDetails(
        geonameid: json["geonameid"],
        name: json["name"],
        population: json["population"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        division: json["division"] == null
            ? null
            : Division.fromJson(json["division"]),
        country:
            json["country"] == null ? null : Country.fromJson(json["country"]),
        currency: json["currency"] == null
            ? null
            : Currency.fromJson(json["currency"]),
        timezone: json["timezone"] == null
            ? null
            : Timezone.fromJson(json["timezone"]),
        wikiId: json["wiki_id"],
        wikiUrl: json["wiki_url"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "geonameid": geonameid,
        "name": name,
        "population": population,
        "latitude": latitude,
        "longitude": longitude,
        "division": division?.toJson(),
        "country": country?.toJson(),
        "currency": currency?.toJson(),
        "timezone": timezone?.toJson(),
        "wiki_id": wikiId,
        "wiki_url": wikiUrl,
        "status": status,
      };
}

class Country {
  Country({
    this.code,
    this.name,
    this.geonameid,
    this.dependsOn,
  });

  final String? code;
  final String? name;
  final int? geonameid;
  final String? dependsOn;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        code: json["code"],
        name: json["name"],
        geonameid: json["geonameid"],
        dependsOn: json["depends_on"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "geonameid": geonameid,
        "depends_on": dependsOn,
      };
}

class Currency {
  Currency({
    this.code,
    this.name,
  });

  final String? code;
  final String? name;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
      };
}

class Division {
  Division({
    this.code,
    this.geonameid,
    this.name,
    this.type,
  });

  final String? code;
  final int? geonameid;
  final String? name;
  final String? type;

  factory Division.fromJson(Map<String, dynamic> json) => Division(
        code: json["code"],
        geonameid: json["geonameid"],
        name: json["name"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "geonameid": geonameid,
        "name": name,
        "type": type,
      };
}

class Timezone {
  Timezone({
    this.timezone,
    this.gtmOffset,
    this.gmtOffset,
    this.isDaylightSaving,
    this.code,
  });

  final String? timezone;
  final int? gtmOffset;
  final int? gmtOffset;
  final bool? isDaylightSaving;
  final String? code;

  factory Timezone.fromJson(Map<String, dynamic> json) => Timezone(
        timezone: json["timezone"],
        gtmOffset: json["gtm_offset"],
        gmtOffset: json["gmt_offset"],
        isDaylightSaving: json["is_daylight_saving"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "timezone": timezone,
        "gtm_offset": gtmOffset,
        "gmt_offset": gmtOffset,
        "is_daylight_saving": isDaylightSaving,
        "code": code,
      };
}
