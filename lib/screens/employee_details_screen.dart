import 'package:flutter/material.dart';
import 'package:flutter_for_college/models/employee_model.dart';

class EmployeeDetailsScreen extends StatefulWidget {
  const EmployeeDetailsScreen({super.key});

  @override
  State<EmployeeDetailsScreen> createState() => _EmployeeDetailsScreenState();
}

class _EmployeeDetailsScreenState extends State<EmployeeDetailsScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();

  String? _selectedGender;
  String? _selectedDepartment;

  final List<DropdownMenuItem<String>> _genders = [
    DropdownMenuItem(value: "Male", child: Text("Male")),
    DropdownMenuItem(value: "Female", child: Text("Female")),
  ];

  final List<DropdownMenuItem<String>> _department = [
    DropdownMenuItem(value: "IT", child: Text("IT")),
    DropdownMenuItem(value: "Sales", child: Text("Sales")),
    DropdownMenuItem(value: "Support", child: Text("Support")),
  ];

  final List<EmployeeModel> _lstEmployee = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Details'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  hintText: 'Enter Full name',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade50,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Full name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField(
                items: _genders,
                onChanged: (value) {
                  _selectedGender = value;
                },
                decoration: InputDecoration(
                  labelText: 'Gender',
                  prefixIcon: const Icon(Icons.location_city),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade50,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a Gender';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField(
                items: _department,
                onChanged: (value) {
                  _selectedDepartment = value;
                },
                decoration: InputDecoration(
                  labelText: 'Gender',
                  prefixIcon: const Icon(Icons.location_city),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade50,
                ),
              ),

              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          //Add student code goes here
                          EmployeeModel employee = EmployeeModel(
                            fullName: _fullNameController.text,
                            gender: _selectedGender!,
                            department: _selectedDepartment!,
                          );

                          setState(() {
                            _lstEmployee.add(employee);
                          });
                        }
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('Add Employee'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const OutputScreen(),
                        //   ),
                        // );
                      },
                      icon: const Icon(Icons.visibility),
                      label: const Text('View Employee'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              if (_lstEmployee.isNotEmpty) ...{
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _lstEmployee.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final employee = _lstEmployee[index];
                    return Card(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text(employee.fullName[0].toUpperCase()),
                        ),
                        title: Text(employee.fullName),
                        subtitle: Text(employee.id),
                        trailing: Wrap(
                          spacing: 12,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _lstEmployee.removeAt(index);
                                });
                              },
                              icon: Icon(Icons.delete, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              } else ...{
                Text(
                  "No Data",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.grey.shade400),
                ),
              },
            ],
          ),
        ),
      ),
    );
  }
}
