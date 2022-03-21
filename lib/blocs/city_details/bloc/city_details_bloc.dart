import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tasketiya/models/city_details.dart';

import '../../../service/locations_service.dart';

part 'city_details_event.dart';
part 'city_details_state.dart';

class CityDetailsBloc extends Bloc<CityDetailsEvent, CityDetailsState> {
  CityDetailsBloc() : super(CityDetailsLoading()) {
    on<LoadCityDetails>(_onLoadCities);
  }
}

void _onLoadCities(
    LoadCityDetails event, Emitter<CityDetailsState> emit) async {
      
  var res = await LocationsService().getCityDetails(geonameid: event.geonameid);
  emit(CityDetailsLoaded(res));
}
