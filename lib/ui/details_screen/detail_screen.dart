import 'package:flutter/material.dart';
import 'package:guia_turistica/ui/details_screen/widgets/header.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  static const String routeName = '/detail-screen';

  @override
  Widget build(BuildContext context) {
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
