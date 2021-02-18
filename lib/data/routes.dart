import 'package:flutter/material.dart';

import '../screen/aboutDialog_screen.dart';
import '../screen/gridView_screen.dart';
import '../screen/imagefilter_screen.dart';
import '../screen/interactiveViewer_screen.dart';
import '../screen/switchListTile_screen.dart';
import '../screen/checkboxListTile_screen.dart';

List<Map<String, dynamic>> routes = [
  {'widget': 'ImageFiltered', 'route': ImageFilterScreen.route},
  {'widget': 'SwitchListTile', 'route': SwitchListTileScreen.route},
  {'widget': 'InteractiveViewer', 'route': InteractiveViewerScreen.route},
  {'widget': 'GridView', 'route': GridViewScreen.route},
  {'widget': 'AboutDialog', 'route': AboutDialogScreen.route},
  {'widget': 'CheckboxListTile', 'route': CheckboxListTileScreen.route},
];
