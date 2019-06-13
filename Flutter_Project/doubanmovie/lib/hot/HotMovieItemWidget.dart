import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'HotMovieData.dart';

class HotMovieItemWidget extends StatefulWidget {

HotMovieData hotMovieData;

HotMovieItemWidget(this.hotMovieData);
  @override
  _HotMovieItemWidgetState createState() => _HotMovieItemWidgetState();
}

class _HotMovieItemWidgetState extends State<HotMovieItemWidget> {


  @override
  Widget build(BuildContext context) {
    String actors;
    for (var i = 0; i < (widget.hotMovieData.casts.length); i++) {
      var cast = widget.hotMovieData.casts[i];
      if (i == 0) {
        actors = cast.name;
      }else {
        actors = actors+'/'+cast.name;
      }
    }
    return Container(
      height: 160,
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Image.network(
            widget.hotMovieData.images.small,
            width: 80,
            height: 120,
            fit: BoxFit.cover,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.hotMovieData.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget.hotMovieData.rating.toString(),
                    style: TextStyle(
                      fontSize: 14, color: Colors.black54),
                    ),
                    Text('导演：'+ widget.hotMovieData.directors[0].name, style: TextStyle(fontSize: 14, color: Colors.black54),),
                    Text('主演: ' + actors,
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(widget.hotMovieData.collectCount.toString() + '人看过', style: TextStyle(color: Colors.red,fontSize: 14),),
                OutlineButton(
                  child: Text('购票', style: TextStyle(fontSize: 16),),
                  color: Colors.red,
                  textColor: Colors.red,
                  highlightColor: Colors.red,
                  // 边
                  borderSide: BorderSide(
                    color: Colors.red
                  ),
                  onPressed: () {
                    
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}