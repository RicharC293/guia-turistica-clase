import 'package:flutter/material.dart';
import 'package:guia_turistica/ui/details_screen/widgets/header.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  static const String routeName = '/detail-screen';

  @override
  Widget build(BuildContext context) {
    final listImages = List.generate(
        6,
        (index) =>
            'https://st.depositphotos.com/1016440/2534/i/450/depositphotos_25344733-stock-photo-sunrise-at-the-beach.jpg');
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mitad del mundo',
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Row(
                      children: List.generate(
                          5,
                          (index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              )),
                    ),
                    Text('5'),
                  ],
                ),
                SelectableText(
                  'Descripcion del atractivo turistico, Descripcion del atractivo turistico,Descripcion del atractivo turistico,Descripcion del atractivo turistico,Descripcion del atractivo turistico,Descripcion del atractivo turistico,Descripcion del atractivo turistico',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Copiar descripción',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(fontSize: 10)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            width: double.infinity,
            child: Row(
              children: [
                ...listImages
                    .map(
                      (e) {
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                e,
                                fit: BoxFit.cover,
                                height:
                                    (MediaQuery.of(context).size.width - 64) /
                                        4,
                              ),
                            ),
                          ),
                        );
                      },
                    )
                    .toList()
                    .skip(listImages.length - 3),
                if (listImages.length > 4)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.network(
                              listImages[4],
                              fit: BoxFit.cover,
                              height:
                                  (MediaQuery.of(context).size.width - 64) / 4,
                            ),
                            Positioned.fill(
                              child: Container(
                                color: Colors.white.withOpacity(0.5),
                                child: Center(
                                  child: Text(
                                    '+${listImages.length - 4}',
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Reservar'),
        icon: Icon(Icons.calendar_month),
      ),
    );
  }
}
