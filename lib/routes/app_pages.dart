import 'package:axis_alignment/routes/app_routes.dart';
import 'package:axis_alignment/screen_one.dart';
import 'package:axis_alignment/screen_two.dart';

import 'package:flutter/material.dart';

class AppPages {
  static Map<String , WidgetBuilder> get routes {
    return {
      AppRoutes.initial:(context) => CarsListView(),
      AppRoutes.AddDeatils:(context) => AddDeatils_Item(myCallBack1: (nameVal, mobileNoVal) {
       AppConstants.nameValuIs = nameVal;
          AppConstants.mobileNo = mobileNoVal;
          // print(AppConstants.nameValuIs);
          //  print(AppConstants.mobileNo);
    })
     };
  }
}
class AppConstants {
  static String nameValuIs = "";
  static String mobileNo = "";
}