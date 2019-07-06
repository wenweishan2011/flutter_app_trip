import 'package:flutter/material.dart';
import 'navigator/tab_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabNavigationBar(),
    );
  }
}

