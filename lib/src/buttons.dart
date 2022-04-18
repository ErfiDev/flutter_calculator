import 'package:flutter/material.dart';

Widget GetButtons() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisSize: MainAxisSize.max,
    children: [
      Expanded(
        child: Row(
          children: [
            Expanded(child: Container(color: Colors.grey)),
            Expanded(child: Container(color: Colors.grey)),
            Expanded(child: Container(color: Colors.grey)),
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Container(color: Colors.grey)),
            Expanded(child: Container(color: Colors.grey)),
            Expanded(child: Container(color: Colors.grey)),
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Container(color: Colors.grey)),
            Expanded(child: Container(color: Colors.grey)),
            Expanded(child: Container(color: Colors.grey)),
          ],
        ),
      ),
    ],
  );
}
