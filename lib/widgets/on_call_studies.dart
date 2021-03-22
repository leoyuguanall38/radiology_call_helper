import 'package:flutter/material.dart';
import 'package:radiology_call_helper/data/number_of_studies.dart';

final List<String> _urgencyLevels = [
  'STAT RED',
  'STAT ORANGE',
  'STAT YELLOW',
  'NOT STAT',
];

final List<String> _urgency = [
  'STAT_RED',
  'STAT_ORANGE',
  'STAT_YELLOW',
  'NOT_STAT',
];

final List<Color> _urgencyColors = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
];

class OnCallStudies extends StatelessWidget {
  final String section;

  OnCallStudies({this.section});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      height: 300.0,
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
                fontSize: 18.0,
              ),
            ),
            trailing: Text(
              allSections[section][_urgency[index]].toString(),
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
