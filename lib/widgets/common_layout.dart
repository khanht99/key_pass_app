import 'package:flutter/material.dart';

class CommonLayout extends StatelessWidget {
  const CommonLayout({super.key, required this.child});
  final Widget child;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("KeyPass"),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to perform on button press
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
