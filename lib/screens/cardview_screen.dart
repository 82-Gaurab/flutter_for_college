import 'package:flutter/material.dart';
import 'package:flutter_for_college/models/student_model.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CardWidget(
              student: StudentModel(
                fname: "Flash",
                lname: "Bob",
                city: "Africa",
              ),
            ),
            CardWidget(
              student: StudentModel(
                fname: "Batman",
                lname: "Pahadi",
                city: "Nepal",
              ),
            ),
            CardWidget(
              student: StudentModel(
                fname: "Bob",
                lname: "The Don",
                city: "China",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
