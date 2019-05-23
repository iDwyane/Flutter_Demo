import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: null,
            accountEmail:null,
            currentAccountPicture: null,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg_account_switcher.png'),
                fit: BoxFit.cover,
            ),
            // border: Border(bottom: BorderSide(width: 1))
            ),
          ),
          ListTile(
            title: Text(
              '首页',
              style: TextStyle(color: Colors.blue[600]),
              ),
            leading: ImageIcon(
              AssetImage('images/quantum_ic_home_black_24.png'),
              color: Colors.blue[600],
            ),
            onTap: (){

            },
          ),
          ListTile(
            title: Text(
              '翻译收藏夹',
              style: TextStyle(color: Colors.black)),
            leading: ImageIcon(
              AssetImage('images/quantum_ic_stars_black_24.png'),
              // color: Colors.blue[600],
            ),
            onTap: (){
              
            },
          ),
          ListTile(
            title: Text(
              '翻译',
              style: TextStyle(color: Colors.black)),
            leading: ImageIcon(
              AssetImage('images/quantum_ic_offline_pin_black_24.png'),
              // color: Colors.blue[600],
            ),
            onTap: (){
              
            },
          ),
          ListTile(
            title: Text(
              '设置',
              style: TextStyle(color: Colors.black)),
            leading: ImageIcon(
              AssetImage('images/quantum_ic_settings_black_24.png')
            ),
            onTap: (){
              
            },
          ),
        ],
      )
    );
  }
}