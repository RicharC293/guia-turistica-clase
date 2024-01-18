import 'package:flutter/material.dart';

import 'title_custom.dart';

class CategoriesSelector extends StatelessWidget {
  const CategoriesSelector({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://st.depositphotos.com/1016440/2534/i/450/depositphotos_25344733-stock-photo-sunrise-at-the-beach.jpg',
                      // Responsive
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.width * 0.25,
                      // Como se renderiza la imagen
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Categoria',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontSize: 10),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemCount: 6,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
