part of 'city_details_bloc.dart';

abstract class CityDetailsEvent extends Equatable {
  const CityDetailsEvent();

  @override
  List<Object> get props => [];
}

class LoadCityDetails extends CityDetailsEvent {
  final int geonameid;
  const LoadCityDetails({required this.geonameid});
}
