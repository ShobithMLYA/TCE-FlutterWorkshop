import 'package:flutter/material.dart';

class SimpleGrid extends StatefulWidget {
  SimpleGrid({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SimpleGridState createState() => _SimpleGridState();
}

class _SimpleGridState extends State<SimpleGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: buildGridView());
  }

  GridView buildGridView() {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: <Widget>[
        Container(color: Colors.blue, margin: EdgeInsets.all(10)),
        Container(color: Colors.blue, margin: EdgeInsets.all(10)),
        Container(color: Colors.blue, margin: EdgeInsets.all(10)),
        Container(color: Colors.blue, margin: EdgeInsets.all(10)),
        Container(color: Colors.blue, margin: EdgeInsets.all(10)),
        Container(color: Colors.blue, margin: EdgeInsets.all(10)),
        Container(color: Colors.blue, margin: EdgeInsets.all(10)),
        Container(color: Colors.blue, margin: EdgeInsets.all(10)),
        Container(color: Colors.blue, margin: EdgeInsets.all(10)),
        Container(color: Colors.blue, margin: EdgeInsets.all(10)),
      ],
    );
  }
}
