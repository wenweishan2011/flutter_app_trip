import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_trip/model/User.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _resultData = "hell";

  Future<User> _getData() async {
    final response = await http
        .get('http://www.devio.org/io/flutter_app/json/test_common_model.json');
    Map userMap = json.decode(response.body);
    User user = User.fromJson(userMap);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: _getData(),
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            switch(snapshot.connectionState){
              case ConnectionState.none:
                return Text('Input a url to start');
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator(),);
              default:
                if(snapshot.hasError){
                  return Text('error');
                }else{
                  return Text('result: ${snapshot.data.title}');
                }
            }
          }),
    );
  }
}
