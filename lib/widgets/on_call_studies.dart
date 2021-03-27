import 'package:flutter/material.dart';
import 'package:radiology_call_helper/data/app_initialize_data.dart';

final List<String> _urgencyLevels = urgencyLevels;

final Map<String, List<String>> _urgencySublevels = urgencySublevels;

final List<Color> _urgencyColors = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
];

var _allSectionsData = allSectionsData;

class OnCallStudies extends StatefulWidget {
  final String section;

  OnCallStudies(this.section);

  @override
  _OnCallStudiesState createState() => _OnCallStudiesState(section);
}

class _OnCallStudiesState extends State<OnCallStudies> {
  String section;

  _OnCallStudiesState(this.section);

  List<Widget> getSubtiles(int index) {
    var subtiles = <Widget>[];
    for (var i = 1; i < _urgencySublevels[_urgencyLevels[index]].length; i++) {
      var subtile = new ListTile(
        tileColor: Colors.grey[700],
        leading: Container(
          height: 30.0,
          width: 30.0,
          color: _urgencyColors[index],
        ),
        title: Text(
          _urgencySublevels[_urgencyLevels[index]][i],
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        trailing: Text(
          _allSectionsData[widget.section][_urgencyLevels[index]]
                  [_urgencySublevels[_urgencyLevels[index]][i]]
              .toString(),
          style: TextStyle(
            color: _urgencyColors[index],
            fontSize: 20.0,
          ),
        ),
      );
      subtiles.add(subtile);
    }
    return subtiles;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      height: 600.0,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        itemCount: _urgencyLevels.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            children: getSubtiles(index),
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
              _allSectionsData[widget.section][_urgencyLevels[index]]['ALL']
                  .toString(),
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
