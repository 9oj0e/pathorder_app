import 'package:flutter/material.dart';

import 'package:pathorder_app/_core/constants/move.dart';


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
      initialRoute: Move.mainHolder,
      routes: getRouters(),
      // theme: theme(),
    );
  }
}
