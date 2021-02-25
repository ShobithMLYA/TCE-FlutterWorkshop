import 'package:flutter/material.dart';
import 'package:flutter_week2/views/widgets/colorGrid/category_screen.dart';

class ColorGrid extends StatefulWidget {
  @override
  _ColorGridState createState() => _ColorGridState();
}

class _ColorGridState extends State<ColorGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colour Grid'),
      ),
      body: CategoriesScreen(),
    );
  }
}
