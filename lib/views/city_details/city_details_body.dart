import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasketiya/blocs/city_details/bloc/city_details_bloc.dart';

import '../widgets/city_details_card.dart';

class CityDetailsBody extends StatelessWidget {
  const CityDetailsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CityDetailsBloc, CityDetailsState>(
      builder: (context, state) {
        if (state is CityDetailsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CityDetailsLoaded) {
          return CityDetailsCard(data: state.cityDetailsData);
        } else {
          return const Center(child: Text("Something went wrong"));
        }
      },
    );
  }
}
