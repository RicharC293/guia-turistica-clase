import 'package:flutter/material.dart';

class CitiesSelector extends StatelessWidget {
  const CitiesSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('index: $index',
                  style: Theme.of(context).textTheme.labelLarge),
            ),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
