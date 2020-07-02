import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("サンプル"),
      ),
      body: Column(
        children: <Widget>[
          Text("文字です"),
          Text("column配下なので縦に並びます"),
          Image.asset("assets/images/img.png"),
        ],
      ),
    );
  }
}
