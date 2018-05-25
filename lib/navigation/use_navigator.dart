import 'package:flutter/material.dart';
import 'package:flutter_sample/navigation/SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "navigator",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('First Screen'),
        ),
        body: new Center(
          child: Container(
            width: 130.0,
            height: 250.0,
            child: new Column(
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return SecondScreen();
                    }));
                  },
                  child: new Text("普通跳转"),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/SecondScreen");
                    },
                    child: new Text("通过名称跳转"),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: new RaisedButton(
                    onPressed: () async {
                      var s = await Navigator.push(context,
                          new MaterialPageRoute<String>(
                              builder: (BuildContext context) {
                        return new SecondScreen();
                      }));
                      print(s);
                    },
                    child: new Text("得到返回值"),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: new RaisedButton(
                    onPressed: () async {
                      Navigator.push(context, new PageRouteBuilder(
                          opaque: true,
                          pageBuilder: (BuildContext context, _, __) {
                            return new SecondScreen();
                          },
                          transitionDuration:const Duration(milliseconds: 300),
                          transitionsBuilder: (___, Animation<double> animation, ____, Widget child) {
                           var s= new SlideTransition(
                              child:child,
                              position: new Tween<Offset>(
                                begin: const Offset(1.0, 0.0),
                                end: const Offset(0.0, 0.0),
                              ).animate(animation),
                            );
                            return s;
                          }
                      ));

                    },
                    child: new Text("Slide动画跳转"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
