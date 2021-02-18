import 'package:flutter/material.dart';

import './screen/home_screen.dart';
import './screen/imagefilter_screen.dart';
import './screen/switchListTile_screen.dart';
import './screen/gridView_screen.dart';
import './screen/interactiveViewer_screen.dart';
import './screen/aboutDialog_screen.dart';
import './screen/checkboxListTile_screen.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        GridViewScreen.route: (context) => GridViewScreen(),
        ImageFilterScreen.route: (context) => ImageFilterScreen(),
        SwitchListTileScreen.route: (context) => SwitchListTileScreen(),
        InteractiveViewerScreen.route: (context) => InteractiveViewerScreen(),
        AboutDialogScreen.route: (context) => AboutDialogScreen(),
        CheckboxListTileScreen.route: (context) => CheckboxListTileScreen(),
      },
    );
  }
}
