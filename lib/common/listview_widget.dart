import 'package:flutter/material.dart';
import 'package:flutter_for_college/models/student_model.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key, required this.lstStudent});

  final List<StudentModel> lstStudent;

  @override
  Widget build(BuildContext context) {
    return (lstStudent.isNotEmpty)
        ? ListView.builder(
            shrinkWrap: true,
            itemCount: lstStudent.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final student = lstStudent[index];
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(student.fname[0].toUpperCase()),
                  ),
                  title: Text("${student.fname} ${student.lname}"),
                  subtitle: Text(student.city),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        : Text(
            "No Data",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.grey.shade400),
          );
  }
}
