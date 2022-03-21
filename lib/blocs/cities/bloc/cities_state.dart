part of 'cities_bloc.dart';

abstract class CitiesState extends Equatable {
  const CitiesState();

  @override
  List<Object> get props => [];
}

class CitiesLoading extends CitiesState {}

class CitiesLoaded extends CitiesState {
  final Cities? citiesData;
  final List<City?>? cityList;
  const CitiesLoaded({
    this.citiesData,
    this.cityList = const [],
  });

  @override
  List<Object> get props => [citiesData!];
}
