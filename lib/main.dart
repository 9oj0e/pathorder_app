import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/_core/constants/move.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(ProviderScope(child: const MyApp()));
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
      navigatorKey: navigatorKey, // context가 없는 곳에서 context를 사용할 수 있는 방법
      title: 'pass_order',
      debugShowCheckedModeBanner: false,
      initialRoute: Move.mainHolder,
      routes: getRouters(),
      // theme: theme(),
    );
  }
}
