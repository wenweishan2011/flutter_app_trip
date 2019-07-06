import 'package:flutter/material.dart';
import 'package:flutter_app_trip/pages/home_page.dart';
import 'package:flutter_app_trip/pages/my_page.dart';
import 'package:flutter_app_trip/pages/search_page.dart';
import 'package:flutter_app_trip/pages/trip_page.dart';

class TabNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabNavigationBarState();
}

class _TabNavigationBarState extends State<TabNavigationBar> {
  var _currentIndex = 1;
  var _tabController = PageController(
    initialPage: 1
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[HomePage(), SearchPage(), TripPage(), MyPage()],
        controller: _tabController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTaped,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text('首页'),
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('搜索'),
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('旅拍'),
            icon: Icon(
              Icons.camera_alt,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('我的'),
            icon: Icon(
              Icons.account_circle,
            ),
          )
        ],
      ),
    );
  }

  void _onItemTaped(int index) {
    _tabController.jumpToPage(index);
    setState(() {
      _currentIndex = index;
    });
  }
}
