import 'package:flutter/material.dart';
import '../pages/drawer_page.dart';
import '../pages/body_page.dart';
import '../pages/TextFieldDemo.dart';
import './Recording_page.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar:AppBar(
          title:Text('Google Translate'),
          elevation: 0.0, //去掉阴影
        ),
        body: Column(
          children: <Widget>[
            IndexBody(),
            TextFieldPage(),
            Container(height: 10,),
            RecordingTranslate(),
          ],
        ),
        drawer: DrawerPage(),
      ),
    );
  }
}