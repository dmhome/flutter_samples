import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyApp6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return new MaterialApp(
        title: appName,
        theme: new ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.tealAccent[700],
          accentColor: Colors.purpleAccent[700],
        ),
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("123"),
            ),
            body: new Center(
              child: new Container(
                color: Theme.of(context).accentColor,
                child: new Text(
                  'Text with a background color',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
            )));
  }
}

/*class MyHomePage extends StatelessWidget {
  MyHomePage( );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("234"),
      ),
      body: new Center(
        child: new Container(
          color: Theme.of(context).accentColor,
          child: new Text(
            'Text with a background color',
          ),
        ),
      ),
    );
  }
}*/
