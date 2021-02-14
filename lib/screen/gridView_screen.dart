import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: _gridViewCustom(),
    );
  }

  _gridView() {
    return GridView(
      scrollDirection: Axis.vertical,
      reverse: false,
      shrinkWrap: true,
      restorationId: 'dslkfjsldkf',
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        Container(
          color: Colors.yellow[100],
        ),
        Container(
          color: Colors.yellow[200],
        ),
        Container(
          color: Colors.yellow[300],
        ),
        Container(
          color: Colors.yellow[400],
        ),
        Container(
          color: Colors.yellow[500],
        ),
        Container(
          color: Colors.yellow[600],
        ),
      ],
    );
  }

  _gridViewCount() {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        Container(
          color: Colors.yellow[100],
        ),
        Container(
          color: Colors.yellow[200],
        ),
        Container(
          color: Colors.yellow[300],
        ),
        Container(
          color: Colors.yellow[400],
        ),
        Container(
          color: Colors.yellow[500],
        ),
        Container(
          color: Colors.yellow[600],
        ),
      ],
    );
  }

  _gridViewExtent() {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      children: [
        Container(
          color: Colors.yellow[100],
        ),
        Container(
          color: Colors.yellow[200],
        ),
        Container(
          color: Colors.yellow[300],
        ),
        Container(
          color: Colors.yellow[400],
        ),
        Container(
          color: Colors.yellow[500],
        ),
        Container(
          color: Colors.yellow[600],
        ),
        Container(
          color: Colors.yellow[700],
        ),
        Container(
          color: Colors.yellow[800],
        ),
        Container(
          color: Colors.yellow[900],
        ),
      ],
    );
  }

  _gridViewBuilder() {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => Container(
        color: Colors.yellow[(index + 1) * 100],
      ),
      itemCount: 6,
    );
  }

  _gridViewCustom() {
    return GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        childrenDelegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              color: Colors.yellow[(index + 1) * 100],
            );
          },
          childCount: 9,
        ));
  }
}
