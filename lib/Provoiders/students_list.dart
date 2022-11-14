import 'package:axis_alignment/Provoiders/student_model.dart';

import 'package:axis_alignment/SQfliteSample/model/students_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../routes/app_routes.dart';
import 'student_list_provider.dart';

class StudentsList extends StatefulWidget {
  const StudentsList({super.key});

  @override
  State<StudentsList> createState() => _StudentsListState();
}

class _StudentsListState extends State<StudentsList> {
//  List<StudentModel> _studentsList = [];

  @override
  Widget build(BuildContext context) {
    final counterStateProvider = Provider.of<StudentsListProvider>(context);

    return Material(
      child: Scaffold(
          appBar: AppBar(title: Text("List View1")),
          body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: counterStateProvider.Students.length,
                itemBuilder: ((context, index) {
                  final details = counterStateProvider.Students[index];
                  return Container(
                      child: Column(
                    children: [
                      Text("Name: " +
                          counterStateProvider.Students[index].name),
                      Text(
                          "Age: " + counterStateProvider.Students[index].age),
                    ],
                  ));
                }),
              )),
          floatingActionButton: FloatingActionButton(
            onPressed: (() {
              // counterStateProvider.addStudentsData(StudentModel(
              //     name: _nameController.text, age: _ageController.text));
              // print("data added successfully" +
              //     counterStateProvider.Students.length.toString());
              Navigator.pushNamed(context, AppRoutes.studentDetailsPage);
            }),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          )),
    );
  }
}
