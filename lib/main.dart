import 'package:flutter/material.dart';
import 'package:flutter_test_1/day1.dart';
import 'package:flutter_test_1/day2.dart';
import 'package:flutter_test_1/day3.dart';
import 'package:flutter_test_1/day4.dart';
import 'package:flutter_test_1/day5.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ValidatedLoginPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
    ),
  );
}
