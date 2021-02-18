import 'package:flutter/material.dart';

class CheckboxListTileScreen extends StatefulWidget {
  static final route = '/checkboxListTile';

  @override
  _CheckboxListTileScreenState createState() => _CheckboxListTileScreenState();
}

class _CheckboxListTileScreenState extends State<CheckboxListTileScreen> {
  var _boolCat = false;
  var _boolDog = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxListTile'),
      ),
      body: ListView(
        children: [
          CheckboxListTile(
              title: Text('Cat Box'),
              subtitle: Text('this is cat CheckboxListTile'),
              value: null,
              activeColor: Colors.green,
              checkColor: Colors.yellow,
              controlAffinity: ListTileControlAffinity.platform,
              tristate: true,
              secondary: Container(
                  width: 32,
                  height: 32,
                  child: Image.asset('asset/image/catcheck.png')),
              onChanged: (value) {
                setState(() {
                  _boolCat = value;
                });
              }),
          CheckboxListTile(
              title: Text('Dog Box'),
              subtitle: Text('this is dog CheckboxListTile'),
              value: _boolDog,
              activeColor: Colors.green,
              checkColor: Colors.yellow,
              controlAffinity: ListTileControlAffinity.platform,
              secondary: Container(
                  width: 32,
                  height: 32,
                  child: Image.asset('asset/image/dogcheck.png')),
              onChanged: (value) {
                setState(() {
                  _boolDog = value;
                });
              }),
        ],
      ),
    );
  }
}
