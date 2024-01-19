import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guia_turistica/core/utils/theme.dart';
import 'package:guia_turistica/ui/details_screen/detail_screen.dart';
import 'package:guia_turistica/ui/home_screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      // statusBarBrightness: Brightness.light,
      // statusBarIconBrightness: Brightness.dark
    ));
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
