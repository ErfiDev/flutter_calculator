import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/buttons.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _display = '0.0';
  String _currentOperator = '';
  String _currentNumber = '';
  String _rightHandSideNumber = '';

  void _changeNumber(String num) {
    setState(() {
      _currentNumber = num;
      _display = _currentNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _display,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: GetButtons('ac', 'ce', '%', '/')),
                Expanded(child: GetButtons('1', '2', '3', 'x')),
                Expanded(child: GetButtons('4', '5', '6', '-')),
                Expanded(child: GetButtons('7', '8', '9', '+')),
                Expanded(child: GetButtons('00', '.', '0', '=')),
              ],
            ),
          ),
          flex: 4,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
    ));
  }
}
