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
 showAlert(String  message){
  showDialog(context: context, builder: (BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(message),
      actions: [
        TextButton(onPressed: (){}, child: Text("ok"))
      ],
    );
    
  });
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getVillagesList();
  }

 }
   getVillagesList() async{
//step1: create request url with base url and endpoint
//https://19cghmc.cgg.gov.in/myghmcwebapi/Grievance/getGrievanceStatusCitizen
//https://19cghmc.cgg.gov.in/myghmcwebapi/Grievance/getMpin?MOBILE_NO=9100923132
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
        print(_response);
        final _responseString = GrivenaceModel.fromJson(_response.data);
        setState(() {
         this._grievanceResponse = _responseString;
        });
      } on DioError catch (e) {
        print(e.error);
      }
    }
}



