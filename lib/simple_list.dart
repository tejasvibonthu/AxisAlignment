import 'package:axis_alignment/AppConstants/api_constants.dart';
import 'package:axis_alignment/SQfliteSample/helpers/database_helper.dart';
import 'package:axis_alignment/SQfliteSample/model/students_model.dart';
import 'package:axis_alignment/routes/app_pages.dart';
import 'package:axis_alignment/simple_list_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'grievances_model.dart';

class SimpleList extends StatefulWidget {
  const SimpleList({super.key});

  @override
  State<SimpleList> createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  GrivenaceModel? _grievanceResponse;
  List<Student> _studentsDetailsList = [];
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      appBar: AppBar(title: Text("List View1")),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: _studentsDetailsList.length,
            itemBuilder: ((context, index) {
              final details = _studentsDetailsList[index];
              return SimpleListItem(syudentItemDetails: details, callBackUUID: (String uuid) { 
              deleteStudent(uuid) ;
               },);
            }),
          )),
    ));
  }

  //   @override
  void initState() {
    super.initState();
   // getStudentsList();
    // getVillagesList();
  }
   deleteStudent(String UUIdIs) async {
     //   DatabaseHelper _dbInstance = DatabaseHelper.instance;
      //  await _dbInstance.delete(UUIdIs);
      final model = Student;
     //   await _dbInstance.delete("Students", where: '$model.userId' = ?', whereArgs: [UUIdIs]);}

   }
  // getStudentsList() async {
  //   DatabaseHelper _dbInstance = DatabaseHelper.instance;
  //   await _dbInstance.queryAllRows('Students').then((value) {
  //     setState(() {
  //       value.forEach((element) {
  //         _studentsDetailsList.add(StudentDetailsModel(
  //             image: element["image"],
  //             age: element["age"],
  //             name: element["name"],
  //             userId: element["userId"]));
  //       });
  //       print("value$value");
  //     });

  //     print("retrievedValues$_studentsDetailsList");
  //   });
  // }

  getVillagesList() async {
//step1: create request url with base url and endpoint
    final requestUrl = "https://19cghmc.cgg.gov.in/myghmcwebapi/Grievance/" +
        "getGrievanceStatusCitizen";
    print(requestUrl);
//step2:create payload if request POST,PUT, and other except GET
    final requestPayload = {
      "compId": "1610201024643",
      "userid": "cgg@ghmc",
      "password": "ghmc@cgg@2018",
      "mobileno": "7036266270"
    };
    //  print(requestPayload);
////step3: create headers,parameters and authourization,if in case present
//step4:dio or http, use one of it to connect server
    final _dioObject = Dio();
    try {
      final _response = await _dioObject.post(requestUrl, data: requestPayload);
      final response = GrivenaceModel.fromJson(_response.data);
      setState(() {
        _grievanceResponse = response;
      });

      print("resdssss$_grievanceResponse");
    } on DioError catch (e) {
      print(e);
    }
  }

  void requestApi() async {
    final requestUrl = ApiConstants.BaseUrl + ApiConstants.endPoint;
    final requestPayLoad = {"appName": "MJPHRMS", "mobileType": "Android"};
    final _dioObject = Dio();
    try {
      final _response = await _dioObject.post(
        requestUrl,
        data: requestPayLoad,
      );
      print(_response.data);
    } on DioError catch (e) {
      print(e);
    }
  }
}
