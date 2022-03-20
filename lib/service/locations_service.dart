import 'package:flutter/foundation.dart';
import 'package:tasketiya/service/service.dart';

import '../models/models_barrel.dart';

class LocationsService {
  final service = Service();

  Future<Cities> getCities({int? perPage, int? page, int? population}) async {
    final Map<String, dynamic>? queries = {};
    if (page != null && page > 0) {
      queries?.addAll({'page': '$page'});
    }
    if (perPage != null && perPage > 0) {
      queries?.addAll({'per_page': '$perPage'});
    }
    if (population != null && population > 0) {
      queries?.addAll({'population': '$population'});
    }

    var res =
        await service.get('/country/TR/city/list', queryParameters: queries);

    return Cities.fromJson(res.data);
  }

  Future<CityDetails> getCityDetails({@required int? geonameid}) async {
    var res = await service.get('/city/$geonameid');
    return CityDetails.fromJson(res.data);
  }
}
