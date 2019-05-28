import 'package:doubanmovie/HotMovies/HotMovieData.dart';
import 'package:flutter/material.dart';
import 'HotMovieItemWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HotMoviesListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HotMoviesListWidgetState();
  }
}

class HotMoviesListWidgetState extends State<HotMoviesListWidget> with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true; // 返回true，表示不会被回收
  // 定义hotMovies属性
  List<HotMovieData> hotMovies = new List<HotMovieData>();

  // 在 HotMoviesListWidgetState 的 initState() 生命周期里为 hotMovies 赋值：
  @override
  void initState() {
    super.initState();
    // var data = HotMovieData('反贪风暴4', '6.3', '林德禄', '古天乐/郑嘉颖/林峯', 29013,
    //     'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2551353482.webp');
    setState(() {
      // hotMovies.add(data);
      // hotMovies.add(data);
      // hotMovies.add(data);
      // hotMovies.add(data);
      // hotMovies.add(data);
      // hotMovies.add(data);
      requestData();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('widget来了');
    if (hotMovies == null || hotMovies.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.separated(
          itemCount: hotMovies.length,
          itemBuilder: (context, index) {
            return HotMovieItemWidget(hotMovies[index]);
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1,
              color: Colors.black26,
            );
          },
        ),
      );
    }
  }

  void requestData() async {
    List<HotMovieData> serverDataList = new List();
    final String url =
        'https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=%E6%B7%B1%E5%9C%B3&start=0&count=10&client=&udid=';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      print(response);
      for (dynamic data in responseJson['subjects']) {
        HotMovieData hotMovieData = HotMovieData.fromJson(data);
        serverDataList.add(hotMovieData);
      }
    }

    setState(() {
      hotMovies = serverDataList;
    });
  }
}
