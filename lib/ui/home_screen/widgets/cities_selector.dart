import 'package:flutter/material.dart';
import 'package:guia_turistica/core/models/city_model_2.dart';
import 'package:guia_turistica/core/notifiers/home_screen_notifier.dart';
import 'package:provider/provider.dart';

import '../../../core/models/city_model.dart';

class CitiesSelector extends StatelessWidget {
  const CitiesSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // read -> leer el dato en el momento de la instacia;
    // watch -> escuchando constantemente un cambio;
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
        bottom: 16,
      ),
      padding: const EdgeInsets.only(
        left: 4,
        top: 6,
        bottom: 6,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          )),
      height: 50,
      child: Selector<HomeScreenNotifier, CityModel2?>(
        selector: (context, notifier) => notifier.cities2,
        builder: (context, cities, child) {
          if (cities?.data == null) {
            return const CircularProgressIndicator();
          }
          if (cities!.data.isEmpty) {
            return const Text('No existen datos');
          }
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cities.data[index].attributes.name,
                      style: Theme.of(context).textTheme.labelLarge),
                ),
              );
            },
            itemCount: cities.data.length,
          );
        },
      ),
      // child: cities == null
      //     ? const SizedBox()
      //     : ListView.builder(
      //         scrollDirection: Axis.horizontal,
      //         itemBuilder: (context, index) {
      //           return Card(
      //             child: Padding(
      //               padding: const EdgeInsets.all(4.0),
      //               child: Text(cities[index].name,
      //                   style: Theme.of(context).textTheme.labelLarge),
      //             ),
      //           );
      //         },
      //         itemCount: cities.length,
      //       ),
    );
  }
}
