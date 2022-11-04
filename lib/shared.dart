import 'package:axis_alignment/shared_preferences/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SharedPrefPractice extends StatefulWidget {
  const SharedPrefPractice({super.key});

  @override
  State<SharedPrefPractice> createState() => _SharedPrefPracticeState();
}

class _SharedPrefPracticeState extends State<SharedPrefPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shared pref")),
    body: Container(
        child: Center(
          child: Column(
            children: [
            TextButton(onPressed: (() async {
           final name =  await SharedPreferencesClass().writeTheDta("name", "Tejasvi");
             print("name$name");
           // writeTheDta("", "Tejasvi");
          }
          ), child: Text("Save user name")
          ),
          TextButton(onPressed: (() async{
           final valIs =  await SharedPreferencesClass().readTheData("name");
           print("storedValis$valIs");
           // writeTheDta("", "Tejasvi");
          }
          ), child: Text("get user name")
          ),
          TextButton(onPressed: (() async{
            await SharedPreferencesClass().deleteTheData("name");
           // writeTheDta("", "Tejasvi");
          }
          ), child: Text("delete user name")
          )],
         ),
        ),
      ),
    );
  }
}