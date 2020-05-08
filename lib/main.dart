import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Card(),
            ],
          ),
        ),
      ),
    );
  }
}
