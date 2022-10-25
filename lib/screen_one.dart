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
 List<String> carsList = [];
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("screen1")),
      body:Container(
        color: Colors.yellow,
        child: ListView.builder(
          itemCount: carsList.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(Icons.car_rental),
                    title: Text(carsList[index]),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
         MaterialPageRoute(builder: ((context) => 
         screen_two(myCallBack1: (nameVal, mobileNoVal) {
         final String result =  '$nameVal   $mobileNoVal';
          setState(() {
             carsList.add(result);
          });
          },)
         )
         ));
        
         },
           child: const Icon(Icons.add)
         )
         );
  }
}
