import 'package:flutter/material.dart';
import 'package:guia_turistica/ui/details_screen/detail_screen.dart';

import 'title_custom.dart';

class AttractionSelector extends StatelessWidget {
  const AttractionSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TitleCustom(title: 'Atracciones'),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, DetailScreen.routeName);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    'https://st.depositphotos.com/1016440/2534/i/450/depositphotos_25344733-stock-photo-sunrise-at-the-beach.jpg',
                    // Responsive
                    width: MediaQuery.of(context).size.width * 0.45,
                    // Como se renderiza la imagen
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: 6,
          ),
        ),
      ],
    );
  }
}
