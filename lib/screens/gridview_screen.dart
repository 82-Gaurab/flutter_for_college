import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(8),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        crossAxisCount: 3,
        children: [
          for (int i = 1; i <= 10; i++) ...{
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.grey,
                ),
                child: Text("$i", style: TextStyle(fontSize: 50)),
              ),
            ),
          },
        ],
      ),
    );
  }
}
