// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';


//  class ProfileDetails extends StatefulWidget {
//   const ProfileDetails({super.key});

//   @override
//   State<ProfileDetails> createState() => _ProfileDetailsState();
// }

// class _ProfileDetailsState extends State<ProfileDetails> {
//    dynamic jsonResult;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(title: Text("Profile")),
//   body: (
//      //   color:  Colors.white,
//         child: Column(
//           children: [
//                Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Center(
//                     child: CircleAvatar(
//                 radius: 48, // Image radius
//               //  backgrContaineroundImage: NetworkImage(jsonResult["cphoto"]),
//               ),
//                   ),
//                 ),
//             Card(
//               elevation: 20,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextButton(onPressed: (() {
//                      requestApi();
//                  //  getVillagesList();
//                   }), child: Text("click me"))
//                 // Padding(
                 
//                 //   padding: const EdgeInsets.all(10.0),
//                 //   child: Row_Component("Name",jsonResult["cuser_name"] ?? "")
//                 // ),
//                 // Padding(
//                 //   padding: const EdgeInsets.all(10.0),
//                 //   child: Row_Component("Id",jsonResult["cdid"] ?? "")
//                 // ),
//                 //  Padding(
//                 //   padding: const EdgeInsets.all(10.0),
//                 //   child: Row_Component("Mobile No",jsonResult["cmobileno"] ?? "")
//                 // ),
//                 //  Padding(
//                 //   padding: const EdgeInsets.all(10.0),
//                 //   child: Row_Component("Status",jsonResult["cstatus"] ?? "")
//                 // ),
//               ]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Row Row_Component(String Title , String value) {
//     return Row(
      
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        //  crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(color : Colors.white,child: Text(Title,style: TextStyle(color: Colors.black , fontSize: 20 , fontFamily:  'RaleWay' ))),
//             Padding(
//               padding: const EdgeInsets.only(right: 50),
//               child: Container(color : Colors.black,child: Text(value,style: TextStyle(color: Colors.white , fontSize: 20 , fontFamily:  'RaleWay'),textAlign: TextAlign.start)),
//             ),
//           ],
//         );
//   }
//   @override
//   void initState() {
//     // ignore: todo
//     // TODO: implement initState
//    // fetchDataFromJson();
//   // getVillagesList();
//     }
// //   fetchDataFromJson() async{
// //     String data = await rootBundle.loadString("assets/profile.json");
// //     setState(() {
// //          jsonResult = json.decode(data);
// //     });
// //  print("result is $jsonResult");
// //     // print(jsonResult["cuser_name"]);
// //  }
//  void requestApi() async {
//     final requestUrl =  "https://uat3.cgg.gov.in/cmnwebservicesmobile/attwsapi/versionCheck";
//     final requestPayLoad = {"appName": "MJPHRMS",
// "mobileType": "Android"};
//     final _dioObject = Dio();
//     try {
//       final _response = await _dioObject.post(
//         requestUrl,
//         data: requestPayLoad,
//       );
//       print(_response.data);
//     } on DioError catch (e) {
//       print(e);
//     }
//  }

//   }
  


