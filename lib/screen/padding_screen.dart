import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  static final route = '/padding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: ListView(
        children: [
          _buildPadding(EdgeInsets.all(16), 'EdgeInsets.all(16)'),
          _buildPadding(EdgeInsets.symmetric(vertical: 16),
              'EdgeInsets.symmetric(vertical: 16)'),
          _buildPadding(EdgeInsets.only(top: 16, right: 16),
              'EdgeInsets.only(top: 16, right: 16)'),
          _buildPadding(EdgeInsets.fromLTRB(8, 16, 24, 32),
              'EdgeInsets.fromLTRB(8, 16, 24, 32)'),
        ],
      ),
    );
  }

  _buildPadding(EdgeInsetsGeometry padding, String title) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Padding(
                  padding: padding,
                  child: Container(
                      color: Colors.white,
                      child: Image.asset('asset/image/catIcon.png')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(title),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            thickness: 3,
          ),
        ],
      ),
    );
  }
}
