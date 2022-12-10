import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:motion_toast/motion_toast.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.blue,
      content: const Text(
        'Clicked',
      ),
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
        textColor: Colors.black,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _showSnackBar();
              },
              child: const Text('Show snackBar'),
            ),
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "hello from Flutter Toast",
                  toastLength: Toast.LENGTH_SHORT,
                );
              },
              child: const Text('Show snackBar-- toast'),
            ),
            ElevatedButton(
              onPressed: () {
                MotionToast.success(
                  description: const Text("sucess"),
                  animationDuration: Duration.zero,
                ).show(context);
              },
              child: const Text('Sucesss'),
            ),
            ElevatedButton(
              onPressed: () {
                MotionToast.error(
                  description: const Text("error"),
                  // animationDuration: Duration.zero,
                ).show(context);
              },
              child: const Text('Error'),
            ),
          ],
        ),
      ),
    );
  }
}
