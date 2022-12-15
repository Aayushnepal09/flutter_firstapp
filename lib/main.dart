import 'package:flutter/material.dart';
// import 'class/display.dart';
// import 'class/grid_screen.dart';
// import 'class/calculatorApp.dart';
import 'class/dataTable_Screen.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter for class',
        initialRoute: '/',
        routes: {
          '/': (context) => const datatableScreen()
          // '/': (context) => const CalculatorScreen(),
          // '/': (context) => const grid_Screen(),
          // '/': (context) => const CardScreen(),
          //'/': (context) => const RowsColumn(),
          // '/': (context) => const SnackBarScreen(),
          // '/': (context) => const flexible(),
          //'/': (context) => const ImageScreen(),
          //'/': (context) => const StudentDetailsScreen(),
          //'/displayStudent': ((context) => const studentDisplay()),
          // '/': (context) => const listTiles(),
          //'/': (context) => const columnScreen(),
          // '/': (context) => const ArithmeticScreen(),
          //'/': (context) => const RadionButton(),
          // '/Arithemticoutput': (context) => const ArithmeticOutputScreen(),
          // '/simpleInterest': (context) => const simpleInterest(),
        }),
  );
}
