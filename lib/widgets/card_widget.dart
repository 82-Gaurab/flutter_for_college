import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.city,
  });

  final String firstName;
  final String lastName;
  final String city;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        elevation: 8,
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "First Name: $firstName",
                style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
              ),
              Text(
                "Last Name: $lastName",
                style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
              ),
              Text(
                "City: New $city",
                style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
