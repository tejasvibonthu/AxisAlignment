import 'package:axis_alignment/routes/app_pages.dart';
import 'package:axis_alignment/routes/app_routes.dart';
import 'package:axis_alignment/screen_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



 class CarsListView extends StatefulWidget {
  const CarsListView({super.key});

  @override
  State<CarsListView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CarsListView> {
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
       Navigator.pushNamed(context, AppRoutes.AddDeatils);
      // print( AppConstants.nameValuIs);
       final String name  = AppConstants.nameValuIs;
         final String mobileNo  = AppConstants.mobileNo;
         final String result = name + mobileNo ;
         print(result);
       setState(() {
         carsList.add(result);
       });
         },
         
           child: const Icon(Icons.add)
         )
         );
  }
}
