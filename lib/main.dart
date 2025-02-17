import 'package:flutter/material.dart';
import 'package:flutter_test_1/day1.dart';
import 'package:flutter_test_1/day2.dart';
import 'package:flutter_test_1/day3.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: GridViewGallery()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(child: Text("Welcome to Flutter")),
    );
  }
}
