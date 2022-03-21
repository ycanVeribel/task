import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasketiya/blocs/city_details/bloc/city_details_bloc.dart';
import 'package:tasketiya/main.dart';
import 'package:tasketiya/routes/app_routes.dart';

import '../../blocs/cities/bloc/cities_bloc.dart';
import '../widgets/city_card.dart';

class CitiesList extends StatelessWidget {
  const CitiesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CitiesBloc, CitiesState>(
        builder: (context, state) {
          if (state is CitiesLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CitiesLoaded) {
            return ListView.builder(
              itemCount: state.cityList?.length,
              itemBuilder: (BuildContext context, int index) {
                return CityCard(
                  data: state.cityList![index],
                  onTap: () {
                    context.read<CityDetailsBloc>().add(
                          LoadCityDetails(
                              geonameid: state.cityList![index]!.geonameid!),
                        );

                    appRouter.push(const CityDetailsPageRoute());
                  },
                );
              },
            );
          } else {
            return const Text("Someting went wrong");
          }
        },
      ),
    );
  }
}
