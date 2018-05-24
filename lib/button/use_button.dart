import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      title: 'Flutter Demo',
      home: Content(),
    );
  }
}

class Content extends StatelessWidget {
  RaisedButton bt = RaisedButton(
    child: Text("hello world"),
    onPressed: (){

    },
    textColor: Colors.deepPurpleAccent,//添加点击事件的字体颜色
    color:Colors.cyan,//添加点击事件的背景颜色
    disabledColor: Colors.green,//未添加点击事件背景颜色
    disabledTextColor: Colors.white,//未添加点击事件的字体颜色
    textTheme: ButtonTextTheme.accent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("demo"),
        ),
        body: Container(
          color: Colors.amberAccent,
          child: Column(
            children: <Widget>[
              new Expanded(
                  child: new Center(
                child: GestureDetector(
                  child: new MyApp1(),
                  onTap: () {
                    print("onTap");
                  },
                ),
              ))
            ],
          ),
        ));
  }
}
