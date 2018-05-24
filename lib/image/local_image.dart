import 'package:flutter/material.dart';

class MyApp9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "use image",
      home: new Scaffold(
        appBar: AppBar(
          title: Text("use image"),
        ),
        body: new Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                new FadeInImage(
                  placeholder: new AssetImage("images/image/test1.png"),
                  image: new AssetImage("images/image/test2.png"),
                  width: 100.0,height: 100.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
