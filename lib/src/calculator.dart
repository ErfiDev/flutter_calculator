import 'package:flutter/material.dart';

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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(width: double.infinity),
          Container(
            width: 150,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Result...',
                enabled: false,
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            height: 400,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '3',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '4',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '5',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '6',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '7',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '8',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '9',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '0',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
          TextButton(onPressed: () {}, child: Text('Calculate')),
        ],
      ),
    );
  }
}
