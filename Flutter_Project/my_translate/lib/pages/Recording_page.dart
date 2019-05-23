import 'package:flutter/material.dart';
import '../const/const_page.dart';

class RecordingTranslate extends StatefulWidget {
  @override
  _RecordingTranslateState createState() => _RecordingTranslateState();
}

class _RecordingTranslateState extends State<RecordingTranslate> {
  List<Translate> _items = [
    Translate('drawer', '抽屉', true), // 类似iOS的Model
    Translate('title', 'subTitle', false),
    Translate('title', 'subTitle', false),
    Translate('title', 'subTitle', false),
    Translate('title', 'subTitle', false),
    Translate('title', 'subTitle', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _displayList(index);
        },
      ),
    );
  }

  Widget _displayList(int index) {
    return Container(
      padding: EdgeInsets.only(top: 2.0, bottom: 2.0, left: 2.0, right: 2.0),
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero)),
          // 外边距
          margin: EdgeInsets.only(
            left: 8.0,
            right: 8.0,
          ),
          child: Container(
            height: 80.0,
            padding: EdgeInsets.only(
              // 内边距
              left: 15.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _flexble(index),
                _collection(index),
              ],
            ),
          )),
    );
  }

  Widget _flexble(int index) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start, //让副轴靠左
        children: <Widget>[
          Text(
            _items[index].title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            _items[index].subTitle,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[700],
            ),
            // style: Theme.of(context).textTheme.subhead,
          )
        ],
      ),
    );
  }

  Widget _collection(int index) {
    return IconButton(
      onPressed: () {
        print('点击我了');
        _items[index].isCollection = !_items[index].isCollection;
        print(!_items[index].isCollection);
      },
      icon: Icon(
        _items[index].isCollection ? Icons.star : Icons.star_border,
        size: 25.0,
        color: _items[index].isCollection ? Colors.yellow[600] : Colors.grey[700],
      ),
      
    );
  }
}
