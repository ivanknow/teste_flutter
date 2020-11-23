import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.lightBlueAccent,
        child: Row(
          children: [
            Text(
              "Welcome:",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 36.0),
            ),
            Text(
              "Ivan",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 36.0),
            ),
          ],
        ));
  }

  String sayHello() {
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    if (hour < 12) {
      hello = "Morning(" + now.toString();
    } else {
      hello = "Evening" + hour.toString();
    }
    return hello;
  }
}
