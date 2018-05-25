import 'package:flutter/material.dart';

class MyApp16 extends StatelessWidget {
  final items = new List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("gridView"),
        ),
        body: new GridView.count(crossAxisCount: 3,
            children: new List.generate(100,(index){
              return new Center(
                child: new Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline,
                ),
              );
            })
        ),
      ),
    );
  }
}
