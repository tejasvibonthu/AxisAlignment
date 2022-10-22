import 'package:flutter/material.dart';


 class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key ,required this.myCallBack1});
  final Function (String nameVal , String mobileNoVal) myCallBack1 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("screen 2")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Name"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Mobile No"),
            ),
          ),
          TextButton(onPressed: () {
           // myCallBack("tejasvi", "Harish");
           myCallBack1("tejasvi","Harish");
           Navigator.pop(context);

          },
          child: Text("submit"),)
        ],
        
      ),
    );
  }
}