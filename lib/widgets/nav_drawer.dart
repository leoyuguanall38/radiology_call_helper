import 'package:flutter/material.dart';
import 'package:radiology_call_helper/pages/home.dart';

class NavDrawer extends StatelessWidget {
  final Map<String, Widget> menuItemPages = {
    'Home': Home(),
  };

  Widget navDrawerItem(BuildContext context, String itemTitle) {
    return Material(
      color: Colors.grey[900],
      child: InkWell(
        splashColor: Colors.grey,
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => menuItemPages['Home'],
            ),
          );
        },
        child: ListTile(
          title: Text(
            itemTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget navDrawerDivider() {
    return Divider(
      height: 1.0,
      thickness: 1.0,
      color: Colors.white,
    );
  }

  Widget navDrawerHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        children: <Widget>[
          Text(
            'University Hospitals Cleveland',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Department of Radiology',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            navDrawerHeader(),
            navDrawerItem(context, 'Home'),
            navDrawerDivider(),
            navDrawerItem(context, 'Call Resources'),
            navDrawerDivider(),
            navDrawerItem(context, 'Phone Numbers'),
            navDrawerDivider(),
            navDrawerItem(context, 'Terms of Use'),
            navDrawerDivider(),
            navDrawerItem(context, 'Disclaimer'),
            navDrawerDivider(),
            navDrawerItem(context, 'About Us'),
            navDrawerDivider(),
            navDrawerItem(context, 'Contact Us'),
            navDrawerDivider(),
          ],
        ),
      ),
    );
  }
}
