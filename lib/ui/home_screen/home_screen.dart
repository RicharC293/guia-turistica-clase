import 'package:flutter/material.dart';
import 'package:guia_turistica/core/notifiers/home_screen_notifier.dart';
import 'package:guia_turistica/ui/home_screen/widgets/attraction_selector.dart';
import 'package:guia_turistica/ui/home_screen/widgets/categories_selector.dart';
import 'package:provider/provider.dart';

import 'widgets/cities_selector.dart';
import 'widgets/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeScreenNotifier>().getCities();
    context.read<HomeScreenNotifier>().getCategories();
    context.read<HomeScreenNotifier>().getAttraction();
  }

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
