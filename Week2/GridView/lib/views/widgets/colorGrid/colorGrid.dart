import 'package:flutter/material.dart';
import 'package:flutter_week2/views/widgets/colorGrid/category_screen.dart';

class ColorGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colorful Grid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoriesScreen(),
    );
  }
}
