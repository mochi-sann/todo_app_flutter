import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import "package:./TodoList.dart"
void main() {
  // 最初に表示するWidget
  runApp(MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // アプリ名
      title: 'My Todo App',
      theme: ThemeData(
        // テーマカラー
        primarySwatch: Colors.indigo,
      ),
      // リスト一覧画面を表示
      home: TodoListPage(),
    );
  }
}

// リスト一覧画面用Widget
class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBarを表示し、タイトルも設定
      appBar: AppBar(
          title: Text('リスト一覧', style: TextStyle(color: Colors.grey[900])),
          backgroundColor: Colors.grey[200]),
      // *** 追加する部分 ***
      // ListViewを使いリスト一覧を表示
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('ニンジンを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ニンジンを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ニンジンを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ニンジンを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ニンジンを買う'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              // 遷移先の画面としてリスト追加画面を指定
              return TodoAddPage();
            }),
          );
          // --- 省略 ---
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

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
          title: Text('リストを追加', style: TextStyle(color: Colors.grey[900])),
          backgroundColor: Colors.grey[200]),
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
                    onPressed: () {},
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
                        Navigator.of(context).pop();
                      },
                      child: Text('キャンセル'),
                    ))
              ])),
    );
  }
}
