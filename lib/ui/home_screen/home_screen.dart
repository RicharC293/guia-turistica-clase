import 'package:flutter/material.dart';
import 'package:guia_turistica/ui/home_screen/widgets/attraction_selector.dart';
import 'package:guia_turistica/ui/home_screen/widgets/categories_selector.dart';

import 'widgets/cities_selector.dart';
import 'widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            CitiesSelector(),
            CategoriesSelector(),
            Expanded(child: AttractionSelector()),
          ],
        ),
      ),
    );
  }
}
