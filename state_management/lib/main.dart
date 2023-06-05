import 'package:flutter/material.dart';
import 'package:state_management/provider/count_provider.dart';
import 'package:state_management/provider/example1_provider.dart';
import 'package:state_management/provider/favourite_provider.dart';
import 'package:state_management/screen/count_example.dart';
import 'package:state_management/screen/example1.dart';
import 'package:state_management/screen/favourite/favourite_screen.dart';
import 'package:state_management/statefull_widget_screen.dart';
import 'package:state_management/why_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FavouriteScreen(),
      ),
    );
  }
}
