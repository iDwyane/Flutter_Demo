import 'package:flutter/material.dart';
import './IconDemo.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(0.0),
      child: Container(
        height: 150.0,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextDemo(),
            IconDemo(),
            // Text('sfasdfadf')
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height, //使用[MediaQuery]查询当前媒体。将导致您的小部件在[MediaQueryData]发生更改时自动重
        padding: EdgeInsets.only(
          left: 18.0,
          right: 18.0,
          bottom: 20.0,
          top: 2.0,
        ),
        child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '点按即可输入文本',
        ),
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.0,
        ),
        maxLines: 999, //最大行数
        cursorColor: Colors.grey[500], //光标颜色
        cursorWidth: 2.0, //光标宽度
      ),
      ),
    );
  }
}