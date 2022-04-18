import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/buttons.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black87,
              child: Center(
                child: Text(
                  'The Result...',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: GetButtons(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.remove,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.close,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        child: Center(
                          child: Text(
                            '÷',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.grey,
                        child: Center(
                          child: Text(
                            '=',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        child: Center(
                          child: Text(
                            '.',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
