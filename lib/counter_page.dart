import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  final ValueNotifier<int> counter = ValueNotifier<int>(0);

  CounterPage({super.key});

  void incrementCounter() {
    counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueNotifier Example'),
      ),
      body: Center(
        child: ValueListenableBuilder<int>(
          valueListenable: counter,
          builder: (context, value, child) {
            return Text('Counter: $value',
                style: const TextStyle(fontSize: 24));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
