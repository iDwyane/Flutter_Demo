import 'package:flutter/material.dart';

Color primaryColor = Colors.blue[600];

class IndexBody extends StatefulWidget {
  IndexBody({Key key}) :super(key: key);
  @override
  _IndexBodyState createState() => _IndexBodyState();
}

class _IndexBodyState extends State<IndexBody> {
  String _firstLanguage = '英语';
  String _secondLanguage = '中文（简体）';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      //创建头顶底下背景以及底下灰色线
      decoration: BoxDecoration( 
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey[500],
          )
        ),
      ),
      //设置头顶的文字
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, //居中
        mainAxisAlignment: MainAxisAlignment.start, //居左
        children: <Widget>[
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this._firstLanguage,
                      style: TextStyle(color: primaryColor)
                    ),
                    ImageIcon(
                      AssetImage('images/spinner_blue.9.png'),
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            )
          ),
          Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(Icons.compare_arrows),
              color: primaryColor,
              onPressed: (){
                print('点我');
              },
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this._secondLanguage,
                      style: TextStyle(color: primaryColor)
                    ),
                    ImageIcon(
                      AssetImage('images/spinner_blue.9.png'),
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            )
          ),
        ],
        ),
    );
  }
}