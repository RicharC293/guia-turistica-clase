import 'package:flutter/material.dart';
import 'package:guia_turistica/core/notifiers/home_screen_notifier.dart';
import 'package:provider/provider.dart';

import 'title_custom.dart';

class CategoriesSelector extends StatelessWidget {
  const CategoriesSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = context.watch<HomeScreenNotifier>().categories;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TitleCustom(title: 'Categorias'),
        ),
        SizedBox(
          // definir una altura
          height: 160,
          child: categories == null
              ? const Text('No existen datos')
              : ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            categories[index].image,
                            // Responsive
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.width * 0.25,
                            // Como se renderiza la imagen
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          categories[index].name,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(fontSize: 10),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                ),
        ),
      ],
    );
  }
}
