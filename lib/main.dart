import 'package:flutter/material.dart';

import './screen/imagefilter_screen.dart';
import './screen/switchListTile_screen.dart';
import './screen/gridView_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GridViewScreen(),
    );
  }
}
