import 'package:flutter/material.dart';
// import 'class/ColumnScreen.dart';
import 'class/RowsColumn.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter for class',
        initialRoute: '/',
        routes: {
          '/': (context) => const RowsColumn(),
          // '/': (context) => const SnackBarScreen(),
          // '/': (context) => const flexible(),
          //'/': (context) => const ArithmeticScreen(),
          // '/Arithemticoutput': (context) => const ArithmeticOutputScreen(),
          // '/simpleInterest': (context) => const simpleInterest(),
        }),
  );
}
