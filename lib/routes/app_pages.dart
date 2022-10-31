import 'package:axis_alignment/profile_page.dart';
import 'package:axis_alignment/routes/app_routes.dart';
import 'package:axis_alignment/screen_one.dart';
import 'package:axis_alignment/screen_two.dart';
import 'package:axis_alignment/shared.dart';

import 'package:flutter/material.dart';

class AppPages {
  static Map<String , WidgetBuilder> get routes {
    return {
      AppRoutes.initial:(context) => CarsListView(),
      // ignore: equal_keys_in_map
      AppRoutes.ProfileDetails:(context) => ProfileDetails(),
      // ignore: equal_keys_in_map
      AppRoutes.sharedPref:(context) => SharedPrefPractice(),
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