import 'package:flutter/material.dart';


class screen_two extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final Function (String nameVal , String mobileNoVal) myCallBack1 ;
 screen_two({super.key ,required this.myCallBack1});
  
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = new TextEditingController();
     TextEditingController _mobileController = new TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("screen 2")),
      body: Form(
         key: _formKey,
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.white,
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(hintText: "Name"),
                    validator: (value) {
                       if (value == null || value.isEmpty) {
                           return 'Please enter name';
                        } else {
                          return null;
                        }
                    }
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  color: Colors.white,
                  child: TextFormField(
                    controller: _mobileController,
                    decoration: InputDecoration(hintText: "Mobile No"),
                    maxLength: 10,
                    validator: (value) {
                       if (value == null || value.isEmpty) {
                           return 'Please enter mobile no';
                        } else if (value.length < 10){
                          return 'Please enter 10 digit mobile no';
                        } else {
                          return null;
                        }
                    }
                  ),
                )
              ),
              TextButton(onPressed: () {
                if (_formKey.currentState!.validate()){
                   myCallBack1(_nameController.text , _mobileController.text);
             Navigator.pop(context);
           }
               }, 
               style: TextButton.styleFrom(
        foregroundColor: Colors.white,
      ),
                 child: Text("submit"),
               )
            ],
             ),
        ),
      ),
    );
  }
}