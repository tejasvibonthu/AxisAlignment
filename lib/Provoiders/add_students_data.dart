import 'package:axis_alignment/Provoiders/student_model.dart';
import 'package:provider/provider.dart';
import 'package:axis_alignment/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'student_list_provider.dart';

class AddStudetntDetails extends StatefulWidget {
  const AddStudetntDetails({super.key});

  @override
  State<AddStudetntDetails> createState() => _AddStudetntDetailsState();
}

class _AddStudetntDetailsState extends State<AddStudetntDetails> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _ageController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final studentsStateProvider = Provider.of<StudentsListProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color: Colors.white,
              child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(hintText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    } else {
                      return null;
                    }
                  }),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            child: TextFormField(
                controller: _ageController,
                decoration: InputDecoration(hintText: "Age"),
                maxLength: 10,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter mobile no';
                  } else if (value.length < 10) {
                    return 'Please enter 10 digit mobile no';
                  } else {
                    return null;
                  }
                }),
          ),
        ),
        TextButton(
            onPressed: (() {
              studentsStateProvider.addStudentsData(StudentModel(
                  name: _nameController.text, age: _ageController.text));
              print("data added successfully" +
                  studentsStateProvider.Students.length.toString());
              Navigator.pop(context);
            }),
            child: Text("Add student"))
      ]),
    );
  }
}
