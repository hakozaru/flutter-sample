import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

class Sample extends StatelessWidget {
  final AudioCache player = AudioCache();
  static const platform = const MethodChannel('com.example.sample_app/test');

  Future<void> _test() async {
    String resultString = await platform.invokeMethod('testFunc');
    print(resultString);
  }

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
          FlatButton(
            child: Text("音を鳴らす"),
            onPressed: () => player.play("sounds/sound.mp3"),
          ),
          FlatButton(
            child: Text("ネイティブコードを呼ぶ"),
            onPressed: _test,
          ),
        ],
      ),
    );
  }
}
