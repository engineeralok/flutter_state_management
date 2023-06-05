import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/example1_provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  // double value = 1.0;
  @override
  Widget build(BuildContext context) {
    print("build");
    // final provider = Provider.of<ExampleOneProvider>(context, listen: false);
    // final value = provider.value;
    return Scaffold(
      appBar: AppBar(
        title: Text("Example One"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(
            builder: (context, value, child) {
              final values = value.value;
              return Slider(
                  min: 0,
                  max: 1,
                  value: values,
                  onChanged: (val) {
                    print(values);
                    value.setValue(val);
                  });
            },
          ),
          Consumer<ExampleOneProvider>(
            builder: (context, value, child) {
              final values = value.value;
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(values),
                      ),
                      child: Center(
                        child: Text("Container 1"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(values),
                      ),
                      child: Center(
                        child: Text("Container 2"),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
