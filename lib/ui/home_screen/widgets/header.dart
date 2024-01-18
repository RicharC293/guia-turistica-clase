import 'package:flutter/material.dart';
import 'package:guia_turistica/core/widgets/custom_button.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const CircleAvatar(
            child: Text('RC'),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bienvenido",
                    style: Theme.of(context).textTheme.titleLarge),
                Text(
                  "Richar",
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            ),
          ),
          const SizedBox(width: 16),
          CustomButton(icon: Icons.search, onPressed: () {}),
        ],
      ),
    );
  }
}
