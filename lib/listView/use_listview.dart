import 'package:flutter/material.dart';

class MyApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("listView"),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text('Maps'),
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text('Album'),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('Phone'),
            ),
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text('Maps'),
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text('Album'),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}
