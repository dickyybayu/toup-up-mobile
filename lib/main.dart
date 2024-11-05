import 'package:flutter/material.dart';
import 'package:toup_up/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey,).copyWith(primary: Colors.grey[800], secondary: Colors.grey[700]),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}