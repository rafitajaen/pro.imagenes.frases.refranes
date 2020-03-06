import 'package:flutter/material.dart';

class CoinsIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow[200],
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.yellow[800], width: 2.0)),
      child: Icon(
        Icons.copyright,
        color: Colors.yellow[800],
        size: 18.0,
      ),
    );
  }
}
