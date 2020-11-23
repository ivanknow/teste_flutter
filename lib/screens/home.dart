import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.lightBlueAccent,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Welcome:",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: size_font),
                ),
                Expanded(
                  child: Text(
                    "Ivan Ivan Ivan Ivan Ivan Ivan Ivan Ivan ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.white, fontSize: size_font),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Welcome:",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: size_font),
                ),
                Expanded(
                  child: Text(
                    "Ivan Ivan Ivan Ivan Ivan Ivan Ivan Ivan ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.white, fontSize: size_font),
                  ),
                )
              ],
            ),
            ImgWidget()
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

  double size_font = 20;
}

class ImgWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage asset1 = AssetImage('imgs/spi.png');
    Image image = Image(
      image: asset1,
      width: 200.0,
      height: 200.0,
    );
    return Container(
      child: image,
    );
  }
}
