import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;


 // print('Hello world: ${dart_application_1.calculate()}!');
  void main() {
      var res;
      var sum;
  final myList = [1, 3, 5, 4, 9, 11, 0, -4, -10];
 
  sum = myList.reduce((value, element) {
    res = value + element;
     return res;
  });
 
  print(sum);


  // final result = myList.reduce((max1, element){
  //   if(max1 > element){
  //     return max1;
  //   } else {
  //     return element;
  //   }
  // }); 
  // print(result);
}

