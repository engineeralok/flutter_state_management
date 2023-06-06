import 'package:flutter/material.dart';
import 'package:state_management/screen/count_example.dart';
import 'package:state_management/screen/dark_theme.dart';
import 'package:state_management/screen/example1.dart';
import 'package:state_management/screen/favourite/favourite_screen.dart';
import 'package:state_management/screen/login.dart';
import 'package:state_management/screen/value_notify_listner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final int x = 0;
  int x = 0;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Home"),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: const ListTile(
              title: Text("Home"),
            ),
          ),
          Container(
            width: 290,
            height: 0.4000000000000057,
            decoration: const BoxDecoration(color: Color(0xffdde5ed)),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ExampleOne()));
            },
            child: const ListTile(
              title: Text("Provider Example 1"),
            ),
          ),
          Container(
            width: 290,
            height: 0.4000000000000057,
            decoration: const BoxDecoration(color: Color(0xffdde5ed)),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CountExample()));
            },
            child: const ListTile(
              title: Text("Count Example"),
            ),
          ),
          Container(
            width: 290,
            height: 0.4000000000000057,
            decoration: const BoxDecoration(color: Color(0xffdde5ed)),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavouriteScreen()));
            },
            child: const ListTile(
              title: Text("Favourite List"),
            ),
          ),
          Container(
            width: 290,
            height: 0.4000000000000057,
            decoration: const BoxDecoration(color: Color(0xffdde5ed)),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotifyListenersScreen()));
            },
            child: const ListTile(
              title: Text("Value Notifiy Listner"),
            ),
          ),
          Container(
            width: 290,
            height: 0.4000000000000057,
            decoration: const BoxDecoration(color: Color(0xffdde5ed)),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: const ListTile(
              title: Text("Login Screen"),
            ),
          ),
          Container(
            width: 290,
            height: 0.4000000000000057,
            decoration: const BoxDecoration(color: Color(0xffdde5ed)),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DarkThemeScreen()));
            },
            child: const ListTile(
              title: Text("Change Theme"),
            ),
          ),
          Container(
            width: 290,
            height: 0.4000000000000057,
            decoration: const BoxDecoration(color: Color(0xffdde5ed)),
          ),
        ],
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              x.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
