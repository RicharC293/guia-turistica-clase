import 'package:flutter/material.dart';

class TitleCustom extends StatelessWidget {
  const TitleCustom({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleMedium);
  }
}