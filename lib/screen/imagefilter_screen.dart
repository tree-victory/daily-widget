import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilterScreen extends StatelessWidget {
  ImageFilter _blurFilter = ImageFilter.blur(sigmaX: 3, sigmaY: 3);
  ImageFilter _matrixDefault = ImageFilter.matrix(
      Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1).storage);
  ImageFilter _matrixScaling = ImageFilter.matrix(
      Matrix4(1.5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1).storage);
  ImageFilter _matrixRotation =
      ImageFilter.matrix(Matrix4.rotationZ(0.3).storage);
  ImageFilter _matrixTranslation = ImageFilter.matrix(
      Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 100, 0, 0, 0, 1).storage);
  ImageFilter _matrixPerspective = ImageFilter.matrix(
      Matrix4(1, 0, 0, 0.0005, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1).storage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImageFiltered')),
      body: Center(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return ImageFiltered(
      imageFilter: _blurFilter,
      child: Container(
        width: 300,
        height: 300,
        child: Image.asset(
          'asset/image/cat.png',
        ),
      ),
    );
  }
}
