import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesClass {
  writeTheDta(String key , dynamic value) async{
    final pref = await SharedPreferences.getInstance();
    if (value is String){
      return pref.setString(key, value);
     } else if (value is int){
      return pref.setInt(key, value);
     } else if (value is bool){
      return pref.setBool(key, value);
     } 
  }

Future<dynamic> readTheData(String key) async {
 final pref = await SharedPreferences.getInstance();
   return pref.get(key);
 }

 deleteTheData(String key) async {
  final pref = await SharedPreferences.getInstance();
  pref.remove(key);
 }

 clearTheData() async{
   final pref = await SharedPreferences.getInstance();
   pref.clear();
 }




  // readTheData()
  // deleteData()
  // clearData()
 }
 
