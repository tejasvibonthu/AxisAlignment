import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_builder.dart';

class SimpleList extends StatefulWidget {
  const SimpleList({super.key});

  @override
  State<SimpleList> createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  final states_list = [ "Andhra Pradesh",
                "Arunachal Pradesh",
                "Assam",
                "Bihar",
                "Chhattisgarh",
                "Goa",
                "Gujarat",
                "Haryana",
                "Himachal Pradesh",
                "Jammu and Kashmir",
                "Jharkhand",
                "Karnataka",
                "Kerala",
                "Madhya Pradesh",
                "Maharashtra",
                "Manipur",
                "Meghalaya",
                "Mizoram",
                "Nagaland",
                "Odisha",
                "Punjab",
                "Rajasthan",
                "Sikkim",
                "Tamil Nadu",
                "Telangana",
                "Tripura",
                "Uttarakhand",
                "Uttar Pradesh",
                "West Bengal",
                "Andaman and Nicobar Islands",
                "Chandigarh",
                "Dadra and Nagar Haveli",
                "Daman and Diu",
                "Delhi",
                "Lakshadweep",
                "Puducherry"];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text("List View1")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: states_list.length,
            itemBuilder: ((context, index) {
               final state1 = states_list[index];
               return ListtileWidget(state: state1 ,myCallBack: (value) {
                  showAlert(value);
                },);
            })
          )
        ),
        ),
    );
  }
 showAlert(String  message){
  showDialog(context: context, builder: (BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(message),
      actions: [
        TextButton(onPressed: (){}, child: Text("ok"))
      ],
    );
    
  });
 }
}



