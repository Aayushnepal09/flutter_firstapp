import 'package:flutter/material.dart';

class grid_Screen extends StatefulWidget {
  const grid_Screen({super.key});

  @override
  State<grid_Screen> createState() => _grid_ScreenState();
}

class _grid_ScreenState extends State<grid_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.blue,
          //   child: const Text('1'),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.blue,
          //   child: const Text('2'),
          // ),
          for (int i = 1; i <= 10; (i++))
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.red,
                ),
                child: Text(
                  '$i',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            )
        ],
      ),
    );
  }
}
