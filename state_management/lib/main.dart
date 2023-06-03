import 'package:flutter/material.dart';
import 'package:state_management/statefull_widget_screen.dart';
import 'package:state_management/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WhyProviderScreen(),
    );
  }
}
