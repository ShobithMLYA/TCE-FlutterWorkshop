import 'package:flutter/material.dart';
import 'package:flutter_week2/views/widgets/colorGrid/colorGrid.dart';
import 'package:flutter_week2/views/widgets/imageGrid/imageGrid.dart';
import 'package:flutter_week2/views/widgets/simpleGrid/simpleGrid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: homePage());
  }
}

// ignore: camel_case_types
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: Text('Simple Grid'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SimpleGrid(
                                title: "Simple Grid",
                              )));
                },
              ),
              ElevatedButton(
                child: Text('Color Grid'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ColorGrid()));
                },
              ),
              ElevatedButton(
                child: Text('Picture Grid'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ImageGrid()));
                },
              ),
            ],
          ),
        ));
  }
}
