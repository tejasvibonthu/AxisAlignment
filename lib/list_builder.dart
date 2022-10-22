import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class listview extends StatelessWidget {

//   final String myName;


//   const listview({
//     Key? key,
//     required this.stateList,
//     required this.myName ,
//   }) : super(key: key);

//   final List<String> stateList;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: stateList.length,
//       itemBuilder: (context, index) {
//         final state = stateList[index];
//       return ListTile(
//         title: Text(state),
//         trailing:Icon(Icons.ac_unit),
//       );
//   return Center(child: Text("$state"));
//       },
//     );
//    // static myName = "tejasvi harish"
//   }


class ListtileWidget extends StatelessWidget {
  final Function (String value) myCallBack ;
  const ListtileWidget({
    Key? key,
    required this.state, required this.myCallBack
  }) : super(key: key);

  final String state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        myCallBack(state);
      },
      child: ListTile(
            title: Text(state),
            trailing:Icon(Icons.ac_unit),
          ),
    );
  }
}