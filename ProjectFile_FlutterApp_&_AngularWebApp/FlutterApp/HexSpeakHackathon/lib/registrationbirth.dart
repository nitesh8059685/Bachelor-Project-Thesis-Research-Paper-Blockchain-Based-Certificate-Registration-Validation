import 'package:flutter/material.dart';
import 'thankupage.dart';
//import 'package:json_to_form/json_to_form.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class RegistrationBirth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Registration",
      home: new RegisterBirth(),
      );
  }
}


class RegisterBirth extends StatefulWidget {
  @override
  _RegisterBirthState createState() => _RegisterBirthState();
}

class _RegisterBirthState extends State<RegisterBirth> {

final _DateController=TextEditingController();
final _TimeController=TextEditingController();
final _SexController = TextEditingController();
final _FirstNameController = TextEditingController();
final _MiddleNameController = TextEditingController();
final _LastNameController = TextEditingController();
final _StateController = TextEditingController();
final _PincodeController = TextEditingController();
final _DistrictController = TextEditingController();
final _AddressLine1Controller = TextEditingController();
final _AddressLine2Controller = TextEditingController();
final _FfirstNameController = TextEditingController();
final _FmiddleNameController = TextEditingController();
final _FlastNameController = TextEditingController();
final _FaadharNumberController = TextEditingController();
final _MfirstNameController = TextEditingController();
final _MmiddleNameController = TextEditingController();
final _MlastNameController = TextEditingController();
final _MaadharNumberController = TextEditingController();
final _ReferenceNumberController = TextEditingController();

var txt = new TextEditingController();
final formKey = GlobalKey<FormState>();
bool data2=false; 


  
  

  Widget build(BuildContext context) {
    return new Theme(
          data: new ThemeData(
            primarySwatch: Colors.teal,
            inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.5,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
             focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
              width: 1.5,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          labelStyle: TextStyle(
            color: Colors.teal,
            fontFamily: "Merriweather-Black",
            fontWeight: FontWeight.bold,
          ),
        ),
          ),
          child: new Scaffold(
        backgroundColor: Colors.white,
        
        appBar: new AppBar(
          title: new Text("Registration Form"),
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: const Icon(Icons.arrow_back),
          onPressed: () {  Navigator.pop(context); },
              );
            },
          ),
        ),
        body: _body()
      ),
    );
  }

//BODY******************************************************************************************************
  Widget _body(){
    return new SingleChildScrollView(
      child:
      new Column(
        children: <Widget>[
       //MAIN FORM****************************************************************     
            Container(
              padding:EdgeInsets.only(
                right: 10,
                left: 10
              ),
                child: new Form(
                key: formKey,
                child: new Column(
                  children: <Widget>[
                    new Text("LEGAL INFORMATION",style: new TextStyle(
                  fontSize: 15 
                ),),
                   //FIRST PART OF FORM***********************************************************  
                     new Divider(
                      height: 30, 
                      color: Colors.teal,
                    ), 

                     new Row(
                       children: <Widget>[
                         new Text("Information of the Child",style: new TextStyle(
                  fontSize: 15 
                ),),
                       ],
                     ),
                     new Divider(
                      height: 10,
                      color: Colors.teal,
                    ), 
                    
                    new TextFormField(
                      controller: _DateController,
                      decoration: InputDecoration( 
                      hintText: 'dd/mm/yyyy',
                      labelText: "Date of Birth",
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                    
                    new TextFormField(
                      controller: _TimeController,
                      decoration: InputDecoration( 
                      hintText: 'HH:MM',
                      labelText: "Time Of Birth"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                     new TextFormField(
                       controller: _SexController,
                      decoration: InputDecoration( 
                      labelText: "Sex"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _FirstNameController,
                      decoration: InputDecoration( 
                      labelText: "First Name"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _MiddleNameController,
                      decoration: InputDecoration( 
                      labelText: "Middle Name"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _LastNameController,
                      decoration: InputDecoration( 
                      labelText: "Last Name"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
  //Second Part Of The Form*******************************************************************8
                    new Divider(
                      height: 30, 
                      color: Colors.teal,
                    ), 

                     new Row(
                       children: <Widget>[
                         new Text("Place of birth",style: new TextStyle(
                  fontSize: 15 
                ),),
                       ],
                     ),
                     new Divider(
                      height: 10,
                      color: Colors.teal,
                    ),

                    new TextFormField(
                      controller: _StateController,
                      decoration: InputDecoration( 
                      labelText: "State"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _PincodeController,
                      decoration: InputDecoration( 
                      labelText: "Pin Code"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _DistrictController,
                      decoration: InputDecoration( 
                      labelText: "District"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _AddressLine1Controller,
                      decoration: InputDecoration( 
                      labelText: "Address Line 1"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                    
                    new TextFormField(
                      controller: _AddressLine2Controller,
                      decoration: InputDecoration( 
                      labelText: "Address Line 2"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
//Third Part of form****************************************************************************************
                    new Divider(
                      height: 30, 
                      color: Colors.teal,
                    ), 

                     new Row(
                       children: <Widget>[
                         new Text("Father's Information",style: new TextStyle(
                  fontSize: 15 
                ),),
                       ],
                     ),
                     new Divider(
                      height: 10,
                      color: Colors.teal,
                    ),

                    new TextFormField(
                      controller: _FfirstNameController,
                      decoration: InputDecoration( 
                      labelText: "First Name"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _FmiddleNameController,
                      decoration: InputDecoration( 
                      labelText: "Middle Name"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _FlastNameController,
                      decoration: InputDecoration( 
                      labelText: "Last Name"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _FaadharNumberController,
                      decoration: InputDecoration( 
                      labelText: "Aadhaar Number"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
//Fourth Part of Form***************************************************************************************                    
                    new Divider(
                      height: 30, 
                      color: Colors.teal,
                    ), 

                     new Row(
                       children: <Widget>[
                         new Text("Mother's Information",style: new TextStyle(
                  fontSize: 15 
                ),),
                       ],
                     ),
                     new Divider(
                      height: 10,
                      color: Colors.teal,
                    ),

                    new TextFormField(
                      controller: _MfirstNameController,
                      decoration: InputDecoration( 
                      labelText: "First Name"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _MmiddleNameController,
                      decoration: InputDecoration( 
                      labelText: "Middle Name"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _MlastNameController,
                      decoration: InputDecoration( 
                      labelText: "Last Name"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new TextFormField(
                      controller: _MaadharNumberController,
                      decoration: InputDecoration( 
                      labelText: "Aadhaar Number"
                    ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
//Fifth Part of the form************************************************************************************
                    new Divider(
                      height: 30, 
                      color: Colors.teal,
                    ), 
                      
                    new TextFormField(
                      controller: _ReferenceNumberController,
                      decoration: InputDecoration( 
                      labelText: "Refrence Mobile Number"
                    ),
                    ),
                     
                     new Divider(
                      height: 10,
                      color: Colors.teal,
                    ),
//Sixth Part of the form************************************************************************************
                    new RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                      padding: EdgeInsets.only(
                        right: 50,
                        left: 50,
                        top:15,
                        bottom: 15
                      ),
                      color: Colors.teal,
                      elevation: 15,
                      onPressed: check,
                      child: new Text("Submit",style: new TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(15.0),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    
       );
  }
  void check(){
      
      //print({_is_birthdeath :  _DateController.text});
       Navigator.push(context, MaterialPageRoute(builder: (context)=>ThankYou()));
       var Map={
        'DateOfBirth':_DateController.text,
        'TimeOfBirth':_TimeController.text,
        'Sex':_SexController.text,
        'FirstName':_FirstNameController.text,
        'MiddleName':_MiddleNameController.text,
        'LastName':_LastNameController.text,
      
        
        'PlaceOfBirth': {
          'State':_StateController.text,
        'Pincode':_PincodeController.text,
        'District':_DistrictController.text,
        'AddressLine1':_AddressLine1Controller.text,
        'AddressLine2':_AddressLine2Controller.text,
        },
        'FathersInformation':{
        'FirstName':_FfirstNameController.text,
        'MiddleName':_FmiddleNameController.text,
        'LastName':_FlastNameController.text,
        'AadhaarNumber':_FaadharNumberController.text,
        },
        'MothersInformation':{
        'FirstName':_MfirstNameController.text,
        'MiddleName':_MmiddleNameController.text,
        'LastName':_MlastNameController.text,
        'AadhaarNumber':_FaadharNumberController.text,
        },
        'ReferenceMobileNumber':_ReferenceNumberController.text,
        
      };
      http.post("http://192.168.0.4:8000/certificate-request/", body: json.encode({'Type': 'Birth', 'Data': Map}), headers: {'Content-type': 'application/json'}).then((res) {print(res);});
 
    }
  }


