import 'package:flutter/material.dart';

final List<String> _urgencyLevels = [
  'STAT RED',
  'STAT ORANGE',
  'STAT YELLOW',
  'NOT STAT',
];

final List<Color> _urgencyColors = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
];

class OnCallStudies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        itemCount: _urgencyLevels.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 30.0,
              width: 30.0,
              color: _urgencyColors[index],
            ),
            title: Text(
              _urgencyLevels[index],
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Text(
              '23',
              style: TextStyle(
                color: _urgencyColors[index],
                fontSize: 20.0,
              ),
            ),
          );
        },
      ),
    );
  }
}
