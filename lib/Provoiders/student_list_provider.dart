import 'package:axis_alignment/Provoiders/student_model.dart';
import 'package:axis_alignment/SQfliteSample/model/students_model.dart';
import 'package:flutter/material.dart';

class StudentsListProvider with ChangeNotifier {
  List<StudentModel> _items = [];

  void addStudentsData(StudentModel studentsData) {
    _items.add(studentsData);
    notifyListeners();
  }

  List<StudentModel> get Students {
    return _items;
  }
}
