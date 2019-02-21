import 'package:flutter/material.dart';

import 'package:udemy_flutter_tarea1/text_control.dart';

void main() => runApp(HomeWorkOne());

class HomeWorkOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Ubuntu',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('HomeWork One Udemy'),
        ),
        body: TextControl(),
      ),
    );
  }
}