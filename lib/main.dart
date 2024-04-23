import 'package:flutter/material.dart';
import 'main_holders/main_holder.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pass_order',
      debugShowCheckedModeBanner: false,
      home: MainHolder(),
      // theme: theme(),
    );
  }
}
