import 'dart:ffi';

import 'package:flutter/material.dart';

Widget GetButtons(String t1, t2, t3, t4,
    {Function? handleChange,
    changeRight,
    setOp,
    equal,
    String? op,
    String? number,
    rightNumber}) {
  return Row(
    children: [
      Expanded(
        child: CreateClickableButton(
          t1,
          IsOperator(t1),
          changeRight: changeRight,
          equal: equal,
          handleChange: handleChange!,
          number: number!,
          op: op!,
          rightNumber: rightNumber,
          setOp: setOp,
        ),
      ),
      Expanded(
        child: CreateClickableButton(
          t2,
          IsOperator(t2),
          changeRight: changeRight,
          equal: equal,
          handleChange: handleChange!,
          number: number!,
          op: op!,
          rightNumber: rightNumber,
          setOp: setOp,
        ),
      ),
      Expanded(
        child: CreateClickableButton(
          t3,
          IsOperator(t3),
          changeRight: changeRight,
          equal: equal,
          handleChange: handleChange!,
          number: number!,
          op: op!,
          rightNumber: rightNumber,
          setOp: setOp,
        ),
      ),
      Expanded(
        child: CreateClickableButton(
          t4,
          IsOperator(t4),
          changeRight: changeRight,
          equal: equal,
          handleChange: handleChange!,
          number: number!,
          op: op!,
          rightNumber: rightNumber,
          setOp: setOp,
        ),
      ),
    ],
  );
}

bool IsOperator(String isOp) {
  var operators = ['+', '-', 'x', '/', '%', '=', 'ac', 'ce'];

  return operators.contains(isOp);
}

Widget CreateClickableButton(String text, bool isOp,
    {Function? handleChange,
    changeRight,
    setOp,
    equal,
    String? op,
    number,
    rightNumber}) {
  return InkWell(
    onTap: () {
      if (!isOp) {
        // for numbers
        if (number != '' && op != '') {
          changeRight(text);
        } else {
          handleChange!(text);
        }
      } else {
        if (text != '=') {
          if (number != '') {
            print(text);
            setOp(text);
          }
        } else {
          if (number != '' && op != '' && rightNumber != '') {
            equal();
          }
        }
      }
    },
    child: Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            letterSpacing: 2,
            fontSize: isOp ? 40 : 28,
            fontWeight: isOp ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    ),
  );
}
