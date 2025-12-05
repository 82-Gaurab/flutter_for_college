import 'package:flutter/material.dart';
import 'package:flutter_for_college/widgets/card_widget.dart';

class CardViewScreen extends StatelessWidget {
  const CardViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: CardWidget(firstName: 'Bob', lastName: 'Snow', city: 'City'),
    );
  }
}
