import 'package:axis_alignment/AppConstants/api_constants.dart';
import 'package:axis_alignment/routes/app_pages.dart';
import 'package:axis_alignment/simple_list_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'grievances_model.dart';



class SimpleList extends StatefulWidget {
  const SimpleList({super.key});

  @override
  State<SimpleList> createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
    GrivenaceModel? _grievanceResponse;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text("List View1")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          
          child: ListView.builder(
            itemCount:  _grievanceResponse?.grievance?.length,
            itemBuilder: ((context, index) {
            final details = _grievanceResponse?.grievance?[index];
            return SimpleListItem(itemResponse:details);
          }),
           )
        ),
    ));
    
  }
  //   @override
   void initState() {
     super.initState();
    getVillagesList();
   }

   getVillagesList() async{
//step1: create request url with base url and endpoint
    final requestUrl =
        "https://19cghmc.cgg.gov.in/myghmcwebapi/Grievance/" + "getGrievanceStatusCitizen";
    print(requestUrl);
//step2:create payload if request POST,PUT, and other except GET
    final requestPayload = {
    "compId": "1610201024643", "userid": "cgg@ghmc", "password": "ghmc@cgg@2018", "mobileno": "7036266270"
    };
  //  print(requestPayload);
////step3: create headers,parameters and authourization,if in case present
//step4:dio or http, use one of it to connect server
    final _dioObject = Dio();
      try {
        final _response =
            await  _dioObject.post(requestUrl , data: requestPayload);
           final  response  = GrivenaceModel.fromJson(_response.data);
           setState(() {
             _grievanceResponse = response;
           });

        print("resdssss$_grievanceResponse");
      } on DioError catch (e) {
        print(e);
      }
    }
void requestApi() async {
   final requestUrl =  ApiConstants.BaseUrl + ApiConstants.endPoint;
    final requestPayLoad = {"appName": "MJPHRMS",
"mobileType": "Android"};
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



