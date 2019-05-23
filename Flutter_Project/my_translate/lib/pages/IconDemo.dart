import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IconDemo extends StatefulWidget {
  @override
  _IconDemoState createState() => _IconDemoState();
}

class _IconDemoState extends State<IconDemo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //自由空间均匀地放置
      children: <Widget>[
        Container(
          width: 10.0,
        ), //左边多空出10
        ActionButtton(
          title: '相机',
          icon: Icons.camera_alt,
        ),
        ActionButtton(
          title: '手写',
          icon: CupertinoIcons.pen,
        ),
        ActionButtton(
          title: '对话',
          image: AssetImage('images/ic_double_mic_24dp.png'),
        ),
        ActionButtton(
          title: '语音',
          icon: Icons.keyboard_voice,
        ),
        Container(
          width: 10.0,
        ),
      ],
    );
  }
}

class ActionButtton extends StatefulWidget {
  final String title;
  final IconData icon;
  final AssetImage image;
  ActionButtton({Key key, @required this.title, this.icon, this.image})
      : super(key: key);
  @override
  _ActionButttonState createState() => _ActionButttonState();
}

class _ActionButttonState extends State<ActionButtton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      //创建一个简单的文本按钮
      onPressed: () {},
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
      child: Column(
        children: <Widget>[
          _displayIcon(),
          Padding(
            padding: const EdgeInsets.only(
              left: 0.0,
              right: 0.0,
              top: 10.0,
              bottom: 0.0,
            ),
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            ),
          )
          // Text(widget.title,
          // style: TextStyle(
          //   color: Colors.black,
          //   fontSize: 15.0,
          // ),),
        ],
      ),
    );
  }

  Widget _displayIcon() {
    if (widget.icon != null) {
      return Icon(
        widget.icon,
        color: Color(0xff3f51b5),
        size: 25.0,
      );
    } else if (widget.image != null) {
      return ImageIcon(
        widget.image,
        color: Color(0xff3f51b5),
        size: 25.0,
      );
    } else {
      return Container();
    }
  }
}
