import 'package:flutter/material.dart';

class InteractiveViewerScreen extends StatelessWidget {
  static final route = '/InteractiveViewer';
  TransformationController _tfController = TransformationController();
  var _isScaled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InteractiveViewer'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: GestureDetector(
          onDoubleTap: () {
            if (_isScaled) {
              _tfController.value =
                  Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
              _isScaled = false;
            } else {
              _tfController.value =
                  Matrix4(2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, -80, -50, 0, 1);

              _isScaled = true;
            }
          },
          child: _bigWidget(),
        ),
      ),
    );
  }

  Widget _bigWidget() {
    return InteractiveViewer(
        constrained: true,
        panEnabled: true,
        alignPanAxis: false,
        minScale: 0.8,
        scaleEnabled: true,
        maxScale: 4,
        onInteractionEnd: (details) {
          print('${_tfController.value.toString()}');
        },
        transformationController: _tfController,
        child: Image.asset('asset/image/bigCat.jpg'));
  }
}
