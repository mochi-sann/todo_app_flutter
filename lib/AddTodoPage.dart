import 'package:flutter/material.dart';

class TodoAddPage extends StatefulWidget {
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // foregroundColor: Colors.grey[900],
          title: Text('リストを追加', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.grey[900]),
      body: Container(
          padding: EdgeInsets.all(64),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_text, style: TextStyle(color: Colors.blue)),
                TextField(onChanged: (String value) {
                  setState(() {
                    _text = value;
                  });
                }),
                const SizedBox(height: 8),
                Container(
                  // 横幅いっぱいに広げる
                  width: double.infinity,
                  // リスト追加ボタン
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blueAccent.shade400),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(_text);
                    },
                    child: Text('リスト追加', style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.red.shade400),
                      ),
                      onPressed: () {
                        // "pop"で前の画面に戻る
                        //
                        Navigator.of(context).pop();
                      },
                      child: Text('キャンセル'),
                    ))
              ])),
    );
  }
}
