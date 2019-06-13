import 'package:flutter/material.dart';
import './movies/MoviesWidget.dart';
import './mine/MineWidget.dart';
import './hot/HotWidget.dart';
import './citys/CitysWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '豆瓣电影'),
      routes: {
        '/Citys': (context) => CitysWidget(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  final _widgetItems = [HotWidget(), MoviesWidget(), MineWidget()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(title: Text('热映'), icon: Icon(Icons.school)),
          BottomNavigationBarItem(title: Text('找片'), icon: Icon(Icons.school)),
          BottomNavigationBarItem(title: Text('我的'), icon: Icon(Icons.school)),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetItems[_selectedIndex],//选中不同的选项显示不同的界面
      ),
    );
  }

  void _onItemTapped(int index) {
        setState(() {
      _selectedIndex = index;//刷新界面
    });
  }
}
