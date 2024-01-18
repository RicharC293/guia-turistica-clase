import 'package:flutter/material.dart';
import 'package:guia_turistica/core/utils/theme.dart';
import 'package:guia_turistica/ui/details_screen/detail_screen.dart';
import 'package:guia_turistica/ui/home_screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia Turistica',
      theme: theme,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailScreen.routeName: (context) => const DetailScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
