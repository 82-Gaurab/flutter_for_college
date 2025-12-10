import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final TextEditingController _principleController = TextEditingController();
  final TextEditingController _rateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  String result = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Principle",
                  hintText: "10000",
                ),
                controller: _principleController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter a value";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Rate",
                  hintText: "5",
                ),
                controller: _rateController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter a value";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Time",
                  hintText: "10",
                ),
                controller: _timeController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter a value";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      double si =
                          (double.parse(_principleController.text) *
                              double.parse(_rateController.text)) *
                          double.parse(_timeController.text) /
                          100;
                      result = "$si";
                    });
                  }
                },
                child: Text('Calculate'),
              ),

              SizedBox(height: 30),
              Text(result, style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
      ),
    );
  }
}
