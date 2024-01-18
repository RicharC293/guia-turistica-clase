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
        ],
      ),
    );
  }
}
