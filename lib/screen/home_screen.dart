import 'package:flutter/material.dart';

import '../data/routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Widget'),
      ),
      body: ListView(
        children: routes
            .map((e) => ListTile(
                  title: Text(e['widget']),
                  onTap: () => Navigator.of(context).pushNamed(e['route']),
                ))
            .toList(),
      ),
    );
  }
}
