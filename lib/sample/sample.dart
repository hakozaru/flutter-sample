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
          Text("aaa"),
          Text("bbb")
        ],
      ),
    );
  }
}
