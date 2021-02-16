import 'package:flutter/material.dart';

class AboutDialogScreen extends StatelessWidget {
  static final route = '/AboutDialog';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutDialog'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AboutDialog(
              applicationVersion: '1.0.0',
              applicationIcon: Container(
                width: 56,
                height: 56,
                child: Image.asset(
                  'asset/image/catIcon.png',
                  fit: BoxFit.contain,
                ),
              ),
              applicationName: 'Daily Widget',
              applicationLegalese: '법적 내용',
            ),
            RaisedButton(
                child: Text('show AboutDialog'),
                onPressed: () => _openAboutDialog(context)),
          ],
        ),
      ),
    );
  }

  void _openAboutDialog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationVersion: '1.0.0',
      applicationIcon: Container(
        width: 56,
        height: 56,
        child: Image.asset(
          'asset/image/catIcon.png',
          fit: BoxFit.contain,
        ),
      ),
      applicationName: 'Daily Widget',
      applicationLegalese: '법적 내용',
    );
  }
}
