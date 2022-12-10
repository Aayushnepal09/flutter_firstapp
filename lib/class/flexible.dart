import 'package:flutter/material.dart';

class flexible extends StatefulWidget {
  const flexible({super.key});

  @override
  State<flexible> createState() => _flexibleState();
}

class _flexibleState extends State<flexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Container(
              alignment: Alignment.center,
              height: 400,
              width: double.infinity,
              color: Colors.red,
              child: const Text(
                '1',
                style: TextStyle(fontSize: 40),
              )),
        ),
        Expanded(
          child: Container(
            height: 200,
            color: Colors.blue,
          ),
        )
      ],
    ));
  }
}
