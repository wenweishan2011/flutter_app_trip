import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _imagesUrl = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562408588003&di=1711b695b6e39c8185dd086e1419f4da&imgtype=0&src=http%3A%2F%2Fpic11.nipic.com%2F20101115%2F668573_162639052507_2.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562408588002&di=40ba89f977cae56bbabd55edb88d180f&imgtype=0&src=http%3A%2F%2Fpic25.nipic.com%2F20121202%2F10603465_190228519104_2.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562408588002&di=5f1edf7c121028152c1be52056412a18&imgtype=0&src=http%3A%2F%2Fpic8.nipic.com%2F20100727%2F4982229_100552846120_2.jpg'
  ];

  static const APPBAR_SCROLL_OFFSET_MAX = 100;

  double _appBarAlpha = 0;

  _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET_MAX;
    if(alpha < 0){
      alpha = 0;
    }else if(alpha > 1){
      alpha = 1;
    }
    setState(() {
      _appBarAlpha = alpha;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: NotificationListener(
              onNotification: (Notification notification) {
                if (notification is ScrollUpdateNotification &&
                    notification.depth == 0) {
                  _onScroll(notification.metrics.pixels);
                }
              },
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: Swiper(
                      controller: SwiperController(),
                      pagination: SwiperPagination(),
                      itemCount: _imagesUrl.length,
                      autoplay: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          _imagesUrl[index],
                          fit: BoxFit.fill,
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 800,
                    child: Text('hhhhhh'),
                  ),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: _appBarAlpha,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('首页'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
