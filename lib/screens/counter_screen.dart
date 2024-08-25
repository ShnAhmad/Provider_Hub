// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_hub/providers/counter_provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer.periodic(const Duration(seconds: 1), (timer) {});
  // }

  @override
  Widget build(BuildContext context) {
    final counterprovider =
        Provider.of<CounterProvider>(context, listen: false);

    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
                builder: (context, value, child) => Text(
                      value.count.toString(),
                    ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterprovider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
