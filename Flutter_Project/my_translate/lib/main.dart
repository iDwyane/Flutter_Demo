import 'package:flutter/material.dart';
import 'animation/open_animation.dart';

void main() => runApp(MyApp()); //入口函数

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
      
    //   title: 'Google Translate',
    //   home: Scaffold(
    //     appBar: new AppBar(title: new Text('Test'),),
    //     body: new Column(
    //       children: <Widget>[
    //         new Text('data'),
    //         new Text('hi'),
    //       ],

    //     ),
    //   )
    // );
    return Container(
      child:MaterialApp(
        title: 'Google Translate',
        theme: ThemeData(
          primaryColor: Colors.blue[600],
          primarySwatch: Colors.blue,
        ),
        home: OpenAnimation(),
      )
    );
  }
}