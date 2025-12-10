import 'package:flutter/material.dart';

class StackLayoutScreen extends StatelessWidget {
  const StackLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Layout'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.amber,
              child: Text("I am First container"),
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Text("I am First container"),
              ),
            ),
            Positioned(
              bottom: -20,
              right: 400 / 2 - 50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red[400],
                child: Text("I am First container"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
