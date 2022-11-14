import 'package:axis_alignment/Provoiders/add_students_data.dart';
import 'package:axis_alignment/Provoiders/students_list.dart';

import 'package:axis_alignment/SQfliteSample/pages/student_details.dart';
import 'package:axis_alignment/profile_page.dart';
import 'package:axis_alignment/routes/app_routes.dart';
import 'package:axis_alignment/screen_one.dart';
import 'package:axis_alignment/screen_two.dart';
import 'package:axis_alignment/shared.dart';
import 'package:axis_alignment/simple_list.dart';

import 'package:flutter/material.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      // AppRoutes.initial:(context) => CarsListView(),
      // ignore: equal_keys_in_map
      // AppRoutes.ProfileDetails:(context) => ProfileDetails(),
      AppRoutes.simpleList: (context) => SimpleList(),
      AppRoutes.studentDetailsPage: (context) => AddStudetntDetails(),
      AppRoutes.studentsList: (context) => StudentsList(),
      // ignore: equal_keys_in_map
      AppRoutes.sharedPref: (context) => SharedPrefPractice(),
      AppRoutes.AddDeatils: (context) =>
          AddDeatils_Item(myCallBack1: (nameVal, mobileNoVal) {
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
