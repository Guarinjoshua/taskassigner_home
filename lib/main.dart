import 'package:flutter/material.dart';
import 'package:taskassigner_home/nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Nav(),
        );

  }
}


