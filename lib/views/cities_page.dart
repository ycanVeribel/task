import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasketiya/blocs/cities/bloc/cities_bloc.dart';
import 'package:tasketiya/views/widgets/city_card.dart';
import 'package:tasketiya/views/widgets/search_bar.dart';

class CitiesPage extends StatelessWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          BlocBuilder<CitiesBloc, CitiesState>(
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
          ),
          Expanded(
            child: BlocBuilder<CitiesBloc, CitiesState>(
              builder: (context, state) {
                if (state is CitiesLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is CitiesLoaded) {
                  return ListView.builder(
                    itemCount: state.cityList?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CityCard(data: state.cityList![index]);
                    },
                  );
                } else {
                  return const Text("Someting went wrong");
                }
              },
            ),
          )
        ],
      )),
    );
  }
}
