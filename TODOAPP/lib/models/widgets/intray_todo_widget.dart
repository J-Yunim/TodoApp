import 'package:flutter/material.dart';
import 'package:TODOAPP/models/global.dart';

class IntrayTodo extends StatelessWidget {
  final String title;
  final String keyValue;
  IntrayTodo({this.keyValue, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: myRed,
      ),
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                title,
                style: todoTitle,
              )
            ],
          ),
          Radio(value: null, groupValue: null, onChanged: null),
        ],
      ),
    );
  }
}
