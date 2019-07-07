import 'package:flutter/material.dart';
import 'package:flutter_app_trip/model/common_model.dart';

class LocalNav extends StatelessWidget {
  List<CommonModel> navList;

  LocalNav({Key key, @required this.navList});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: _items(),
        ));
  }

  _items() {
    if (navList == null) return null;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: navList.map((model) {
        return item(model);
      }).toList(),
    );
  }

  Widget item(CommonModel model) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          Image.network(
            model.icon,
            height: 32,
            width: 32,
          ),
          Text(
            model.title,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
