import 'package:flutter/material.dart';

class MyApp17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "GestureDetector",
      home: Scaffold(

        appBar: new AppBar(
          title: Text("GestureDetector"),
        ),
        body: new Center(
          child: new InkWell(

            onTap: (){
              print("body");
            },
            child: Container(
              decoration: new BoxDecoration(
                color: Theme.of(context).buttonColor,
                borderRadius: new BorderRadius.circular(8.0),
              ),
              child: new Text('My Button'),
            ),
          ),
        ),
      ),

    );
  }
}
