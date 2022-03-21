import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/cities/bloc/cities_bloc.dart';
import '../widgets/search_bar.dart';

class CitiesSearchBar extends StatelessWidget {
  const CitiesSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitiesBloc, CitiesState>(
      builder: (context, state) {
        return SearchBar(
          hintText: "type something",
          onChanged: (value) {
            if (state is CitiesLoaded) {
              context.read<CitiesBloc>().add(SearchCities(
                  searchText: value, citiesData: state.citiesData));
            }
          },
        );
      },
    );
  }
}
