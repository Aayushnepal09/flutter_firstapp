import 'package:flutter/material.dart';

class RowsColumn extends StatefulWidget {
  const RowsColumn({Key? key}) : super(key: key);

  @override
  State<RowsColumn> createState() => _RowsColumnState();
}

class _RowsColumnState extends State<RowsColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Rows and column'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.yellow,
                    child: const Text(
                      'Conatiner 1',
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.orange,
                    child: const Text(
                      'Container 2',
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: const Text('Container 3'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 205, 222, 236),
              child: const Text('Container 1'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 102, 35, 31),
              child: const Text('Container 2'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.lime,
              child: const Text(
                'Container 3',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
