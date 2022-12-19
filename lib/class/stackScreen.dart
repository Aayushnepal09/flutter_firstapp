import 'package:flutter/material.dart';

class stackScreen extends StatefulWidget {
  const stackScreen({super.key});

  @override
  State<stackScreen> createState() => _stackScreenState();
}

class _stackScreenState extends State<stackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Stack Screen'),
      ),
      body: Stack(
        children: [
          // Container(
          //     alignment: Alignment.center,
          //     height: 400,
          //     width: double.infinity,
          //     color: Colors.red,
          //     child: const Text(
          //       'first',
          //       style: TextStyle(fontSize: 40),
          //     )),
          // Positioned(
          //     top: 1,
          //     right: 1,
          //     child: Container(
          //       height: 100,
          //       width: 100,
          //       color: Colors.blue,
          //       child: const Text('second'),
          //     )),
          // Positioned(
          //     bottom: 1,
          //     right: 1,
          //     child: Container(
          //       height: 100,
          //       width: 100,
          //       color: Colors.blue,
          //       child: const Text('Third'),
          //     ))
          Positioned(
            // top: 1,
            // left: 1,
            child: SizedBox(
              height: 500,
              width: 500,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Flexible(
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/a/a6/Robert_Downey_Jr_at_Comic_Con_2007.jpg")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
