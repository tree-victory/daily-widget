import 'package:flutter/material.dart';

class SwitchListTileScreen extends StatefulWidget {
  static final route = '/SwitchListTile';

  @override
  _SwitchListTileScreenState createState() => _SwitchListTileScreenState();
}

class _SwitchListTileScreenState extends State<SwitchListTileScreen> {
  bool _bluetoothVal = false;
  bool _alarmVal = false;
  bool _musicVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchListTile'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
              isThreeLine: false,
              value: _bluetoothVal,
              title: Text('bluetooth'),
              subtitle: Text('bluetooth setting'),
              activeThumbImage: AssetImage('asset/image/bluetoothOn.png'),
              activeColor: Colors.white,
              activeTrackColor: Colors.grey.withOpacity(0.5),
              inactiveThumbImage: AssetImage('asset/image/bluetoothOff.png'),
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey,
              dense: true,
              secondary: Icon(
                Icons.bluetooth,
                color: Colors.blue,
              ),
              controlAffinity: ListTileControlAffinity.platform,
              onChanged: (val) {
                setState(() {
                  _bluetoothVal = val;
                });
              }),
          _buildSwitchListTile(
              _alarmVal,
              'alarm',
              'alarm setting',
              Icon(
                Icons.alarm,
                color: Colors.yellow,
              ), (val) {
            setState(() {
              _alarmVal = val;
            });
          }),
          _buildSwitchListTile(
              _musicVal,
              'music',
              'music setting',
              Icon(
                Icons.music_note,
                color: Colors.green,
              ), (val) {
            setState(() {
              _musicVal = val;
            });
          }),
        ],
      ),
    );
  }

  Widget _buildSwitchListTile(
      bool thisVal, String title, String subTitle, Icon icon, Function fn) {
    return SwitchListTile(
        isThreeLine: false,
        value: thisVal,
        title: Text(title),
        subtitle: Text(subTitle),
        activeThumbImage: AssetImage('asset/image/bluetoothOn.png'),
        activeColor: Colors.white,
        activeTrackColor: Colors.grey.withOpacity(0.5),
        inactiveThumbImage: AssetImage('asset/image/bluetoothOff.png'),
        dense: false,
        secondary: icon,
        onChanged: fn);
  }
}
