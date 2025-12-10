import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  String result = '';

  final TextEditingController _firstNoController = TextEditingController();
  final TextEditingController _secondNoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "12",
                  labelText: "First Number",
                ),
                keyboardType: TextInputType.number,
                controller: _firstNoController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter a value";
                  }
                  return null;
                },
              ),

              SizedBox(height: 30),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "10",
                  labelText: "Second Number",
                ),
                controller: _secondNoController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter a value";
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              ElevatedButton(
                child: Text("Add"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      int sum =
                          int.parse(_firstNoController.text) +
                          int.parse(_secondNoController.text);
                      result = "$sum";
                    });
                  }
                },
              ),
              SizedBox(height: 20),

              Text(result, style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
      ),
    );
  }
}
