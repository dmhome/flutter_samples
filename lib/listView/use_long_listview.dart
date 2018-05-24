import 'package:flutter/material.dart';

class MyApp14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = new List<String>.generate(10000, (i) => "Item $i");
    return MaterialApp(
      title: "listView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("listView"),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
