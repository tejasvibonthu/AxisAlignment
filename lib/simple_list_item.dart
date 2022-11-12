import 'dart:io';
import 'package:axis_alignment/grievances_model.dart';
import 'package:flutter/material.dart';
import 'SQfliteSample/model/students_model.dart';
import 'package:uuid/uuid.dart';

class SimpleListItem extends StatelessWidget {
  const SimpleListItem(
      {super.key,
      this.itemResponse,
      this.syudentItemDetails,
      required this.callBackUUID});
  final Grievance? itemResponse;
  final Student? syudentItemDetails;
  final Function(String uuid) callBackUUID;
  // var imagePath ;
  // const VillageListItem({super.key, required this.details});
  //  final VillagDetails? details;

  @override
  Widget build(BuildContext context) {
    // File file = new File("Someimage.jpeg");
    return Card(
      child: Container(
        color: Color.fromARGB(255, 137, 162, 40),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          // imagePath = syudentItemDetails?.image,
          child: Column(children: [
            // Image.file(
            //   File('${syudentItemDetails?.image}'),
            //   width: 100,
            //   height: 100,
            // ),
            // Text("Name  ${syudentItemDetails?.name ?? ""}",
            //     style: TextStyle(color: Colors.white)),
            // Text("age  ${syudentItemDetails?.age ?? ""}",
            //     style: TextStyle(color: Colors.white)),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Edit", style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                      onPressed: () {
                        //  callBackUUID(syudentItemDetails?.userId ?? "");
                      },
                      child:
                          Text("Delete", style: TextStyle(color: Colors.white)))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
