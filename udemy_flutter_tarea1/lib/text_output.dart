import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String mainText;
  TextOutput(this.mainText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        mainText,
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    );
  }
}
