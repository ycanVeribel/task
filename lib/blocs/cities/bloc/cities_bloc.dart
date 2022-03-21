import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tasketiya/service/locations_service.dart';

import '../../../models/models_barrel.dart';

part 'cities_event.dart';
part 'cities_state.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  CitiesBloc() : super(CitiesLoading()) {
    on<LoadCities>(_onLoadCities);
    on<SearchCities>(_onSearchCities);
  }
}

void _onLoadCities(LoadCities event, Emitter<CitiesState> emit) async {
  var res = await LocationsService().getCities();
  emit(CitiesLoaded(citiesData: res, cityList: res.cities));
}

void _onSearchCities(SearchCities event, Emitter<CitiesState> emit) {
  emit(CitiesLoading());

  List<City> tempData = [];

  for (var i = 0; i < event.citiesData!.cities!.length; i++) {
    final temp = event.citiesData!.cities![i];
    if (temp!.name!.toLowerCase().contains(event.searchText.toLowerCase()) ||
        temp.population.toString().contains(event.searchText) ||
        temp.division!.code!.toLowerCase().contains(event.searchText)) {
      tempData.add(event.citiesData!.cities![i]!);
    }
  }
  emit(CitiesLoaded(cityList: tempData, citiesData: event.citiesData));
}
