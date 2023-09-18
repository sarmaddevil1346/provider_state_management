import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_controller/counter_provider_controller.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  @override
  Widget build(BuildContext context) {
    final counterProvider =
        Provider.of<CounterExampleProvider>(context, listen: false);

    return Scaffold(
      body: Center(
          child: Consumer<CounterExampleProvider>(
        builder: (context, value, child) => Text(
          counterProvider.count.toString(),
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
