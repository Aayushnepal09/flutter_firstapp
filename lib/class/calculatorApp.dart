import 'package:flutter/material.dart';

// column : children TextField
// grid view

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int first = 0, second = 0;
  final _textEditingController = TextEditingController();
  final String _operator = '';
  final List<String> _numbers = [
    'C',
    '%',
    '/',
    '<-',
    '1',
    '2',
    '3',
    '+',
    '4',
    '5',
    '6',
    '-',
    '7',
    '8',
    '9',
    '*',
    '%',
    '0',
    '.',
    '='
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Rows and column'),
      ),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
              padding: const EdgeInsets.all(8.0),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 4,
              children: [
                for (int i = 0; i < _numbers.length; i++) ...{
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: Text(
                        _numbers[i],
                        style: const TextStyle(fontSize: 50),
                      ),
                    ),
                  ),
                }
              ]),
        ),
      ]),
    );
  }
}
