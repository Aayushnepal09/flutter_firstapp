import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  Widget displayCard(String title) {
    // return GestureDetector
    return InkWell(
        onTap: () {
          MotionToast.success(description: Text('$title is clicked'))
              .show(context);
        },
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: Card(
              color: Colors.cyan,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(title),
              )),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Card Screen'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                displayCard('first'),
                displayCard('second'),
                displayCard('third'),
                displayCard('forth'),
                displayCard('fifth'),
                displayCard('sixth'),

                //for loop in dart
              ],
            ),
          ),
        ));
  }
}
