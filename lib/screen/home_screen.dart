import 'package:flutter/material.dart';
import 'package:keypass/widgets/common_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('API Result will be displayed here'),
            const SizedBox(height: 24),
            const Text('You have pushed the button this many times:'),
          ],
        ),
      ),
    );
  }
}
