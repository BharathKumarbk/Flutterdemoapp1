import 'package:flutter/material.dart';

Padding navHeading(String title, Color color, double size) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Text(
      '$title',
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Tab tabBar(String title) {
  return Tab(
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
              color: Color(0xff7c7618), style: BorderStyle.solid, width: 1.0)),
      child: Container(
        width: 150.0,
        height: 30.0,
        child: Center(
          child: Text(
            '$title',
            style: TextStyle(fontSize: 15.0),
          ),
        ),
      ),
    ),
  );
}

  Widget itemRow(String img, String item) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Container(
            height:50.0,
            child: Image.asset(
              'images/$img',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text('$item',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0
            ),),
          )
        ],
      ),
    );
  }
