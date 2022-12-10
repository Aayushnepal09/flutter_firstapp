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
          title: const Text('ListTitle'),
        ),
        body: const ListTile(
          leading: Icon(Icons.accessible_forward),
          title: Text("Aayush Nepal"),
          subtitle: Text("Balaju,Kathmandu"),
          trailing: Icon(Icons.delete),
        ));
  }
}
