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
                  "Nome:",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: size_font),
                ),
                Expanded(
                  child: Text(
                    "Homem Aranha",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.white, fontSize: size_font),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Poder:",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: size_font),
                ),
                Expanded(
                  child: Text(
                    "Teias e zueira sem limita",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.white, fontSize: size_font),
                  ),
                )
              ],
            ),
            ImgWidget(),
            OrderButton()
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

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          showThings(context);
        },
        child: Text(
          "Manda Teia",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
    return Container(
      child: button,
    );
  }

  void showThings(BuildContext context) {
    var alert = AlertDialog(
      title: Text("O que houve?"),
      content: Text("Vai teia!"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
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
