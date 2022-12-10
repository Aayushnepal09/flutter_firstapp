import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen();

  @override
  State<ColumnScreen> createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Column'),
        ),
        body: Container(
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Icon(Icons.star, size: 100),
                // Icon(Icons.star, size: 100),
                // Icon(Icons.star, size: 100),

                ElevatedButton(onPressed: () {}, child: const Text("Button")),
                ElevatedButton(onPressed: () {}, child: const Text("Button")),
                ElevatedButton(onPressed: () {}, child: const Text("Button")),
              ],
            )));
  }
}
