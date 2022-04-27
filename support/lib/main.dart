import 'package:flutter/material.dart';
import 'package:support/chat_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resta Digital Support',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatSupport(),
    );
  }
}

