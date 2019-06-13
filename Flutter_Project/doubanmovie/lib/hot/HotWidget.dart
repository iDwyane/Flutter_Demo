import 'package:flutter/material.dart';
import 'HotMoviesListWidget.dart';


class HotWidget extends StatefulWidget {
  @override
  _HotWidgetState createState() => _HotWidgetState();
}

class _HotWidgetState extends State<HotWidget> {
  String curCity = '深圳'; //用变量来存储当前城市
  void _jumpToCitysWidget() async {
    var selectCity = await Navigator.pushNamed(context, '/Citys',arguments: curCity);
    if(selectCity == null) return;
    setState(() {
      curCity = selectCity;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 80,
          // alignment: Aligmen,
          child: Row(
            children: <Widget>[
              GestureDetector(
                child: Text(
                curCity,
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                print('点击');
                _jumpToCitysWidget();
              },
            ),
              Icon(Icons.arrow_drop_down),
              Expanded(
                child: TextField(
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    // 因为 hintText 是 String 类型，为了显示搜索的 icon ，使用了 Unicode 字符，并且设置 MaterialIcons 的字体库，就可以用 Unicode 来表示 icon。要查看特定 icon 的 Unicode 字符，可以在 Icons 里找到，
                    hintText: '\uE8b6 电影 / 电视剧 / 影人',
                    hintStyle:
                        TextStyle(fontFamily: 'MaterialIcons', fontSize: 16),
                    contentPadding: EdgeInsets.only(top: 8, bottom: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      //If the [borderSide] parameter is [BorderSide.none], it will not draw a border. However, it will still define a shape (which you can see if [InputDecoration.filled] is true).
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.black12,
                    filled: true,
                  ),
                ),
                flex: 1,
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: DefaultTabController(
            //TabBar
            length: 2,
            child: Column(
              children: <Widget>[
                Container(
                  constraints: BoxConstraints.expand(height: 50),
                  child: TabBar(
                    unselectedLabelColor: Colors.black12,
                    labelColor: Colors.black87,
                    indicatorColor: Colors.black87, //选择时的颜色
                    tabs: <Widget>[
                      Tab(text: '正在热映'),
                      Tab(text: '即将上映'),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: TabBarView(
                      children: <Widget>[
                        HotMoviesListWidget(curCity),
                        Center(
                          child: Text('即将上映'),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
