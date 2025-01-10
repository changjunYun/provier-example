import 'package:flutter/material.dart';
import 'package:flutter_dev/src/counter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Counter Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '${counter.count}',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: counter.increment,
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: counter.decrement,
                  child: const Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}