import 'package:flutter/material.dart';

class MyApp19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = new List<String>.generate(50, (o) => "Item ${o + 1}");
    return new MaterialApp(
        title: "Scroll delete",
        home: Scaffold(
          appBar: new AppBar(
            title: Text("Scroll delete"),
          ),
          body: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return new Dismissible(
                  key: new Key(item),
                  onDismissed: (direction) {
                    items.removeAt(index);
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text("$item dismissed")));
                  },
                  // Show a red background as the item is swiped away
                  background: new Container(color: Colors.red),
                  child: new ListTile(title: new Text('$item')),
                );
              }),
        ));
  }
}
