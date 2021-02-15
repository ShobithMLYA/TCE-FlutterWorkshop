import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Codecamp Day 1",
      home: Description(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        accentColor: Colors.red,
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.blue, textTheme: ButtonTextTheme.accent),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;

  void incrementA() {
    setState(() {
      a++;
    });
  }

  void incrementB() {
    setState(() {
      b++;
    });
  }

  void incrementC() {
    setState(() {
      c++;
    });
  }

  void incrementD() {
    setState(() {
      d++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "10",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("20"),
            Text("30"),
            Text("40"),
          ],
        ),
        Column(
          children: [
            RaisedButton(
              onPressed: () {
                incrementA();
              },
              child: Text('Button 1'),
            ),
            RaisedButton(
              onPressed: () {
                incrementB();
              },
              child: Text('Button 2'),
            ),
            RaisedButton(
              onPressed: () {
                incrementC();
              },
              child: Text('Button 3'),
            ),
            RaisedButton(
              onPressed: () {
                incrementD();
              },
              child: Text('Button 4'),
            ),
          ],
        )
      ],
    ));
  }
}

class ComponentDescription extends StatefulWidget {
  @override
  _ComponentDescriptionState createState() => _ComponentDescriptionState();
}

class _ComponentDescriptionState extends State<ComponentDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        leading: Icon(Icons.language),
        actions: [
          Icon(Icons.arrow_forward),
        ],
      ),
      body: Container(
        child: ListTile(
          title: Text("Hello"),
          subtitle: Text("World"),
          leading: Checkbox(
            value: true,
            onChanged: (change) {
              print(change);
            },
          ),
          trailing: IconButton(
            icon: Icon(Icons.delete_outline),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class ListViewBuilder extends StatefulWidget {
  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
          leading: Icon(Icons.language),
          actions: [
            Icon(Icons.arrow_forward),
          ],
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Hello"),
            subtitle: Text("World"),
            leading: Checkbox(
              value: true,
              onChanged: (change) {
                print(change);
              },
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete_outline),
              onPressed: () {},
            ),
          );
        }));
  }
}

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  List<String> todolist = [];
  List<bool> isChecked = [];
  String textValue = '';
  void addItems({String todo}) {
    setState(() {
      todolist.add(todo);
      isChecked.add(false);
    });
  }

  void deleteItems({int index}) {
    setState(() {
      todolist.removeAt(index);
      isChecked.removeAt(index);
    });
  }

  void whenChecked({bool checked, int index}) {
    setState(() {
      isChecked[index] = checked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Container(
                        width: 150,
                        height: 150,
                        child: TextField(onChanged: (text) {
                          print(text);
                          setState(() {
                            textValue = text;
                          });
                        })),
                    actions: [
                      RaisedButton(
                          color: Colors.green,
                          onPressed: () {
                            addItems(todo: textValue);
                          },
                          child: Text('Add Item',
                              style: TextStyle(color: Colors.white)))
                    ],
                  );
                });
          },
          child: Icon(Icons.add, color: Colors.white),
        ),
        appBar: AppBar(
          title: Text('Flutter Workshop Week 1'),
          leading: Icon(Icons.language),
          actions: [
            Icon(Icons.arrow_forward),
          ],
        ),
        body: ListView.builder(
            itemCount: todolist.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  '${todolist[index]}',
                  style: TextStyle(
                      decoration: (isChecked[index])
                          ? TextDecoration.lineThrough
                          : null),
                ),
                leading: Checkbox(
                  value: isChecked[index],
                  onChanged: (value) {
                    whenChecked(checked: value, index: index);
                  },
                ),
                trailing: IconButton(
                  onPressed: () {
                    deleteItems(index: index);
                  },
                  icon: Icon(Icons.delete_outline),
                ),
              );
            }));
  }
}
