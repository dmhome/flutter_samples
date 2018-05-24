import 'package:flutter/material.dart';

class MyApp3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new CountTimes();
  }
}

class CountTimes extends State<MyApp3>{

  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,
          child: new Text('Increment'),
        ),
        new Text('Count: $_counter'),
      ],
    );
  }

  void _increment() {

    Function fn=(){
      _counter++;
    };
    setState(fn);//setState 方法至关重要
  }


}