import 'dart:async';

import 'package:flutter/material.dart';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {
  int count = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      count++;
      print(count);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build" + count.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              DateTime.now().hour.toString() +
                  ':' +
                  DateTime.now().minute.toString() +
                  ':' +
                  DateTime.now().second.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              count.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          )
        ],
      ),
    );
  }
}
