import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/TestPage1.dart';
import 'package:hello_world/TestPage2.dart';
import 'package:hello_world/TestPage3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "/test1": (BuildContext context) => TestPage1(),
        "/test2": (BuildContext context) => TestPage2(),
        "/test3": (BuildContext context) => TestPage3()
      },
    );
  }
}

// MyHomePageクラス＝画面の設計
class MyHomePage extends StatefulWidget {
  //コンストラクタ
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// MyHomePageクラス＝画面の状態を保持するクラス
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TestPage1()); //TestPage1.dartのクラス呼び出し？
  }
}
