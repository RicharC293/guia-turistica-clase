import 'package:flutter/material.dart';
import 'package:guia_turistica/core/models/atraction_model.dart';
import 'package:guia_turistica/ui/details_screen/widgets/header.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  static const String routeName = '/detail-screen';

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  AttractionModel? _attraction;

  @override
  void initState() {
    super.initState();
  }

  void getArguments() {
    _attraction = ModalRoute.of(context)!.settings.arguments as AttractionModel;
  }

  @override
  Widget build(BuildContext context) {
    getArguments();
    return Scaffold(
      body: Column(
        children: [
          Header(
            urlHeader: _attraction!.headerImage,
            id: _attraction!.id,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_attraction!.name,
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
                    Text(_attraction!.rating.toString()),
                  ],
                ),
                SelectableText(
                  _attraction!.description,
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
                ..._attraction!.images
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
                    .skip(_attraction!.images.length - 3),
                if (_attraction!.images.length > 4)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.network(
                              _attraction!.images[4],
                              fit: BoxFit.cover,
                              height:
                                  (MediaQuery.of(context).size.width - 64) / 4,
                            ),
                            Positioned.fill(
                              child: Container(
                                color: Colors.white.withOpacity(0.5),
                                child: Center(
                                  child: Text(
                                    '+${_attraction!.images.length - 4}',
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
