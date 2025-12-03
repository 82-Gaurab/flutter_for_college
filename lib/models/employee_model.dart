import 'package:uuid/uuid.dart';

var uuid = Uuid();

class EmployeeModel {
  String id = uuid.v4();
  final String fullName;
  final String gender;
  final String department;

  EmployeeModel({
    required this.fullName,
    required this.gender,
    required this.department,
  });
}
