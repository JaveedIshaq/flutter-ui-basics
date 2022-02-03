import 'package:flutter/material.dart';
import 'package:flutter_app_test/home_page.dart';
import 'dart:developer';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("Build functions");
    return MaterialApp(
      home: HomePage(),
    );
  }
}
