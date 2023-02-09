import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade700,
        appBar: AppBar(
          title: Center(
            child: Text('Ball Magic'),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Let the Ball Decide",
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              color: Colors.white60,
            ),
          ),
          SizedBox(
            height: 20,
            width: 150,
            child: Divider(
              height: 10,
              color: Colors.white30,
              thickness: 2,
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/ball$num.png'),
              onPressed: () {
                setState(() {
                  num = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ]),
      ),
    );
  }
}
