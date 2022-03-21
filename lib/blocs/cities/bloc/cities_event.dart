part of 'cities_bloc.dart';

abstract class CitiesEvent extends Equatable {
  const CitiesEvent();

  @override
  List<Object> get props => [];
}

class LoadCities extends CitiesEvent {}

class LoadMoreCities extends CitiesEvent {
  final Cities? citiesData;
  const LoadMoreCities({this.citiesData});

  @override
  List<Object> get props => [citiesData!];
}

class SearchCities extends CitiesEvent {
  final Cities? citiesData;
  final String searchText;
  const SearchCities({this.citiesData, this.searchText = ""});

  @override
  List<Object> get props => [citiesData!];
}
