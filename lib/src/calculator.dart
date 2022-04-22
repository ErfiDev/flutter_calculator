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
  String _equalOp = '';
  dynamic _result = 0;

  void _changeNumber(String num) {
    setState(() {
      _currentNumber += num;
      _display = _currentNumber;
    });
  }

  void _setOperator(String op) {
    setState(() {
      _currentOperator = op;
    });
  }

  void _changeRightHandleSide(String num) {
    setState(() {
      _rightHandSideNumber += num;
    });
  }

  void _equal() {
    setState(() {
      _equalOp = '=';
      var toNum = int.parse(_currentNumber);
      var rightToNum = int.parse(_rightHandSideNumber);

      switch (_currentOperator) {
        case '+':
          _result = toNum + rightToNum;
          _currentNumber = '$_result';
          _rightHandSideNumber = '';
          _currentOperator = '';
          _display = '$_result';
          break;

        case '/':
          _result = toNum / rightToNum;
          _currentNumber = '$_result';
          _rightHandSideNumber = '';
          _currentOperator = '';
          _display = '$_result';
          break;

        case '-':
          _result = toNum - rightToNum;
          _currentNumber = '$_result';
          _rightHandSideNumber = '';
          _currentOperator = '';
          _display = '$_result';
          break;

        case 'x':
          _result = toNum * rightToNum;
          _currentNumber = '$_result';
          _rightHandSideNumber = '';
          _currentOperator = '';
          _display = '$_result';
          break;

        default:
          null;
      }
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
                      '$_display $_currentOperator $_rightHandSideNumber',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
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
                Expanded(
                  child: GetButtons(
                    'ac',
                    'ce',
                    '%',
                    '/',
                    changeRight: _changeRightHandleSide,
                    equal: _equal,
                    handleChange: _changeNumber,
                    number: _currentNumber,
                    op: _currentOperator,
                    setOp: _setOperator,
                    rightNumber: _rightHandSideNumber,
                  ),
                ),
                Expanded(
                  child: GetButtons(
                    '1',
                    '2',
                    '3',
                    'x',
                    changeRight: _changeRightHandleSide,
                    equal: _equal,
                    handleChange: _changeNumber,
                    number: _currentNumber,
                    op: _currentOperator,
                    setOp: _setOperator,
                    rightNumber: _rightHandSideNumber,
                  ),
                ),
                Expanded(
                  child: GetButtons(
                    '4',
                    '5',
                    '6',
                    '-',
                    changeRight: _changeRightHandleSide,
                    equal: _equal,
                    handleChange: _changeNumber,
                    number: _currentNumber,
                    op: _currentOperator,
                    setOp: _setOperator,
                    rightNumber: _rightHandSideNumber,
                  ),
                ),
                Expanded(
                  child: GetButtons(
                    '7',
                    '8',
                    '9',
                    '+',
                    changeRight: _changeRightHandleSide,
                    equal: _equal,
                    handleChange: _changeNumber,
                    number: _currentNumber,
                    op: _currentOperator,
                    setOp: _setOperator,
                    rightNumber: _rightHandSideNumber,
                  ),
                ),
                Expanded(
                  child: GetButtons(
                    '00',
                    '.',
                    '0',
                    '=',
                    changeRight: _changeRightHandleSide,
                    equal: _equal,
                    handleChange: _changeNumber,
                    number: _currentNumber,
                    op: _currentOperator,
                    setOp: _setOperator,
                    rightNumber: _rightHandSideNumber,
                  ),
                ),
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
