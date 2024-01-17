import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Text('RC'),
                  ),
                  SizedBox(width: 16),
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
                  SizedBox(width: 16),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
