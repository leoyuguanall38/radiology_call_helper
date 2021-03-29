import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  final List<String> _notifications;

  Notifications(this._notifications);

  @override
  _NotificationsState createState() => _NotificationsState(_notifications);
}

class _NotificationsState extends State<Notifications> {
  List<String> _notifications;

  _NotificationsState(this._notifications);

  List<Widget> displayNotifications() {
    List<Widget> notificationsWidgets = [];
    _notifications.forEach((element) {
      notificationsWidgets.add(Text(
        element,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ));
    });
    return notificationsWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.green[200],
        child: Column(
          children: [
            Container(
              height: 80.0,
              width: double.infinity,
              child: Text(
                'Notifications:',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: displayNotifications(),
            ),
          ],
        ),
      ),
    );
  }
}
