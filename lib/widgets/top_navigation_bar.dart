import 'package:flutter/material.dart';

final List<String> _sections = [
  'CHEST',
  'BODY',
  'NEURO',
  'IR',
  'PEDS',
  'NUCS',
  'MSK',
  'BREAST'
];

var selectedSection = _sections[0];

class TopNavigationBar extends StatefulWidget {
  @override
  _TopNavigationBarState createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  int _tapped = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
      ),
      height: 54.0,
      child: ListView.separated(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.grey[50],
              onTap: () {
                setState(() {
                  _tapped = index;
                  selectedSection = _sections[index];
                });
              },
              child: Container(
                width: 94.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 44.0,
                      child: Text(
                        '${_sections[index]}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 3.0),
                        child: Container(
                          height: 6.0,
                          width: double.infinity,
                          color: index == _tapped
                              ? Colors.cyan[700]
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => VerticalDivider(
          color: Colors.amber[100],
          thickness: 2.0,
          width: 2.0,
          indent: 4.0,
          endIndent: 4.0,
        ),
        itemCount: _sections.length,
      ),
    );
  }
}
