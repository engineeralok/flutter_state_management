import 'package:flutter/material.dart';
import 'package:state_management/provider/auth_providere.dart';
import 'package:state_management/provider/count_provider.dart';
import 'package:state_management/provider/example1_provider.dart';
import 'package:state_management/provider/favourite_provider.dart';
import 'package:state_management/provider/them_changer_provider.dart';
import 'package:state_management/screen/dark_theme.dart';
import 'package:provider/provider.dart';
import 'package:state_management/screen/login.dart';
import 'package:state_management/screen/value_notify_listner.dart';

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
          ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
          ChangeNotifierProvider(create: (_) => AuthProvider()),
        ],
        child: Builder(
          builder: (BuildContext context) {
            final themeChanger = Provider.of<ThemeChangerProvider>(context);
            return MaterialApp(
              title: 'Flutter Demo',
              themeMode: themeChanger.themeMode,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              darkTheme: ThemeData(brightness: Brightness.dark),
              home: const LoginScreen(),
            );
          },
        ));
  }
}
