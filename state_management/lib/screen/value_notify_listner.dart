import 'package:flutter/material.dart';

class NotifyListenersScreen extends StatelessWidget {
  NotifyListenersScreen({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notify Listeners"),
      ),
      body: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: toggle,
            builder: (context, value, child) {
              return TextFormField(
                // enabled: toggle.value,
                obscureText: toggle.value,
                decoration: InputDecoration(
                    hintText: "password",
                    suffix: InkWell(
                      onTap: () {
                        toggle.value = !toggle.value;
                      },
                      child: Icon(toggle.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility),
                    )),
              );
            },
          ),
          Center(
              child: ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, value, child) {
              return Text(
                _counter.value.toString(),
                style: const TextStyle(fontSize: 50),
              );
            },
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          print(_counter.value.toString());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
