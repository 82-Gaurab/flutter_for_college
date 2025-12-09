import 'package:flutter/material.dart';
import 'package:flutter_for_college/models/student_model.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.student});

  final StudentModel student;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        color: Colors.red[400],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "First Name: ${student.fname}",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "Last Name: ${student.lname}",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "City: New ${student.city}",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
