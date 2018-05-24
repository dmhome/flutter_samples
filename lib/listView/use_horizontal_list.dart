import 'package:flutter/material.dart';

class MyApp11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("listView"),
        ),
        body: Container(
          height: 200.0,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new Container(
                width: 160.0,
                color: Colors.red,
              ),
              new Container(
                width: 160.0,
                color: Colors.blue,
              ),
              new Container(
                width: 160.0,
                color: Colors.green,
              ),
              new Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              new Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
