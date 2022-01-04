import 'package:flutter/material.dart';


class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Test1")),
        body: Center(
            child: TextButton(
                onPressed: () => {
                      Navigator.pushNamed(context, "/test2")
                      // or
//                      Navigator.of(context).pushNamed("/test2")
                      // or
/*                           .push(MaterialPageRoute(builder: (context) {
                        return TestPage2();
                      })) */
                    },
                child: Text("進む", style: TextStyle(fontSize: 80)))));
  }
}
