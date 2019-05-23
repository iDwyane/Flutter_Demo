import 'package:flutter/material.dart';
import '../pages/index_page.dart';

class OpenAnimation extends StatefulWidget {
  @override
  _OpenAnimationState createState() => _OpenAnimationState();
}

class _OpenAnimationState extends State<OpenAnimation> with SingleTickerProviderStateMixin{
  //定义动画的控制器
  AnimationController _controller;
  Animation _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(
        seconds: 1,
      ),
      vsync: this
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addStatusListener((status){  //监听事件
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder:(context){
            return IndexPage(); //动画完成，显示首页
        }), 
        (route) => route == null);
      }
    });

    _controller.forward(); //播放
  }

  
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: _controller,
        child: Image.asset('images/Open_animation.png',fit: BoxFit.cover) //图片充满屏幕，不变形，所以可能会裁剪
        // child: new Column(
        //   children: <Widget>[
        //     new Text('顶你皮肤'),
        //     new Text("不是吧你"),
        //     new Text('顶你皮肤'),
        //     new Text("不是吧你"),
        //     new Text('舒服舒服'),
        //     new Text("韦德你"),
        //   ],
        // )
        //Image.asset('images/Open_animation.png'),
      );
  }
}