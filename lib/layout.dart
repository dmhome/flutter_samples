import 'package:flutter/material.dart';
import 'package:flutter_sample/gridView/use_gridView.dart';
import 'package:flutter_sample/image/local_image.dart';
import 'package:flutter_sample/listView/use_horizontal_list.dart';
import 'package:flutter_sample/listView/use_listview.dart';
import 'package:flutter_sample/listView/use_long_listview.dart';
import 'package:flutter_sample/navigation/SecondScreen.dart';
import 'package:flutter_sample/navigation/use_navigator.dart';
import 'package:flutter_sample/theme/globleTheme.dart';

import 'package:flutter_sample/button/use_button.dart';
import 'package:flutter_sample/statefulWidget/use_statefulWidget.dart';
void main()  {
  runApp(new MaterialApp(
    home: new FirstScreen(),
    routes: <String, WidgetBuilder> {
      '/SecondScreen': (BuildContext context) => new SecondScreen(),
    },

  ));

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


  return new MaterialApp(
        title: 'Flutter Demo',
        home: new Scaffold(
          backgroundColor: Colors.white,
          appBar: new AppBar(
            centerTitle:true,
            title: new Text('flutter samples'),
            leading: new IconButton(
                icon: new Icon(Icons.account_box),
                tooltip: 'Navigation menu',
                onPressed: null),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.search),
                tooltip: 'Search',
                onPressed: null,
              ),
            ],
          ),
          body: new Content(),
        ));
  }


}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new Image.asset(
                'images/image/test.jpg',
                height: 150.0,
                fit: BoxFit.cover,
              ))
            ],
          ),
          new Container(
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: Container(
                    child: new Column(
                      children: <Widget>[
                        Text("第一行1111111111111111111"),
                        Text("第一行1111111111111111222"),
                      ],
                    ),
                  ),
                ),
                new Container(
                  child: new Icon(Icons.star, color: Colors.red[500]),
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                ),
                new Text(
                  "41",
                  style: new TextStyle(fontSize: 18.0),
                )
              ],
            ),
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 0.0),
          )
        ],
      ),
    ));
  }
}
