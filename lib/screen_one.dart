import 'package:axis_alignment/screen_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'list_builder.dart';

 class screen_1 extends StatefulWidget {
  const screen_1({super.key});

  @override
  State<screen_1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<screen_1> {
  //final userNamesList = [];
 //   List<int> userNamesList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("screen1")),
     
      body: ListView.builder(  
       itemCount:2,
            itemBuilder: ((context, index) {
            // final state1 = userNamesList[index];
              // return Container(
              //    color: Colors.red,
              //    width: 100,
              //    height: 100,
              //    child: ScreenTwo(myCallBack1: (nameVal, mobileNoVal) => print("xx$nameVal  yy$mobileNoVal")),
                 
              // );
             // return ScreenTwo(myCallBack1: (nameVal, mobileNoVal) => Card(child: Text("jksdhfkshla"),));
             return ScreenTwo(myCallBack1 : (value1 ,value2){
             
             Card(child: Text("$value1"),);
             print(value1);
             // print("ggdfhsgajfdhsgj",value2);

             });
             
            }),
    ),
    floatingActionButton: FloatingActionButton(onPressed: () {
   Navigator.push(
    context,
    MaterialPageRoute(
       builder: (context) => ScreenTwo(myCallBack1: (nameVal, mobileNoVal) => "")),
     // builder: (context) => ScreenTwo(myCallBack1: (String nameVal, String mobileNoVal) {  },)),
    );
   
  
     

    },),
    );
  }
  showAlert1(String  message){
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