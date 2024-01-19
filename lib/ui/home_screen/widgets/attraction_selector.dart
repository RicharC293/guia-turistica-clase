import 'package:flutter/material.dart';
import 'package:guia_turistica/core/notifiers/home_screen_notifier.dart';
import 'package:guia_turistica/ui/details_screen/detail_screen.dart';
import 'package:provider/provider.dart';

import 'title_custom.dart';

class AttractionSelector extends StatelessWidget {
  const AttractionSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final attractions = context.watch<HomeScreenNotifier>().attractions;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TitleCustom(title: 'Atracciones'),
        ),
        Expanded(
          child: attractions == null
              ? const CircularProgressIndicator.adaptive()
              : ListView.separated(
                  padding: const EdgeInsets.all(16),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    return Hero(
                      tag: 'image${attractions[index].id}',
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, DetailScreen.routeName,
                              arguments: attractions[index]);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            attractions[index].headerImage,
                            // Responsive
                            width: MediaQuery.of(context).size.width * 0.45,
                            // Como se renderiza la imagen
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: attractions.length,
                ),
        ),
      ],
    );
  }
}
