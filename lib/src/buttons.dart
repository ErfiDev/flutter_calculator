import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget GetButtons(String t1, t2, t3, t4) {
  return Row(
    children: [
      Expanded(
        child: CreateClickableButton(t1, IsOperator(t1)),
      ),
      Expanded(
        child: CreateClickableButton(t2, IsOperator(t2)),
      ),
      Expanded(
        child: CreateClickableButton(t3, IsOperator(t3)),
      ),
      Expanded(
        child: CreateClickableButton(t4, IsOperator(t4)),
      ),
    ],
  );
}

bool IsOperator(String isOp) {
  var operators = ['+', '-', 'x', '/', '%', '=', 'ac', 'ce'];

  return operators.contains(isOp);
}

Widget CreateClickableButton(String text, bool isOp) {
  return InkWell(
    onTap: () {},
    child: Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: isOp ? 40 : 28,
            fontWeight: isOp ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    ),
  );
}
