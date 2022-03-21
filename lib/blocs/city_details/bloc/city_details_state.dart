part of 'city_details_bloc.dart';

abstract class CityDetailsState extends Equatable {
  const CityDetailsState();

  @override
  List<Object> get props => [];
}

class CityDetailsLoading extends CityDetailsState {}

class CityDetailsLoaded extends CityDetailsState {
  final CityDetails cityDetailsData;
  const CityDetailsLoaded(this.cityDetailsData);

  @override
  List<Object> get props => [cityDetailsData];
}
