import 'package:flut/dirs/providerwidgets/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // 👈 This must be present!

class DisplayCounterPage extends StatelessWidget {
  const DisplayCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter =
        context.watch<CounterProvider>(); // ✅ Works only with proper import

    return Scaffold(
      appBar: AppBar(title: const Text("Display Counter Page")),
      body: Center(
        child: Text(
          'Counter: ${counter.count}',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterProvider>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
