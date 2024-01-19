import 'package:flutter/material.dart';
import 'package:guia_turistica/core/notifiers/home_screen_notifier.dart';
import 'package:guia_turistica/core/services/services.dart';
// import 'package:flutter/services.dart';
import 'package:guia_turistica/core/utils/theme.dart';
import 'package:guia_turistica/ui/details_screen/detail_screen.dart';
import 'package:guia_turistica/ui/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.white,
    //   // statusBarBrightness: Brightness.light,
    //   // statusBarIconBrightness: Brightness.dark
    // ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => HomeScreenNotifier(Services())),
      ],
      child: MaterialApp(
        title: 'Guia Turistica',
        theme: theme,
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          DetailScreen.routeName: (context) => const DetailScreen(),
        },
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
