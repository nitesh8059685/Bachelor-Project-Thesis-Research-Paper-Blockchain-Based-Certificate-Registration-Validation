import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class Hospitalgeneration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HospitalGeneration(),
    );
  }
}
class HospitalGeneration extends StatefulWidget {
  @override
  _HospitalGenerationState createState() => _HospitalGenerationState();
}

class _HospitalGenerationState extends State<HospitalGeneration> {
  
  final _EnterTemporaryIdController=TextEditingController();
  final _EnterNameController=TextEditingController();
  final _ReEnterNameController=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: new ThemeData(
        primarySwatch: Colors.teal
      ),
          child: Scaffold(
        appBar: new AppBar(
          title: new Text("Hospital Based Generation"),
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.pop(context);
                },
                );
            },
          ),
        ),
        body: hospitalgenerationbody(),
      ),
    );
  }

  Widget  hospitalgenerationbody(){
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(50),
          child: new Container(
            
            child: Column(
              children: <Widget>[
                new TextFormField(
                  controller: _EnterTemporaryIdController,
                  decoration: new InputDecoration(
                    labelText: "Enter Temporary-ID",
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(20))),
                ),
                new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                new TextFormField(
                  controller: _EnterNameController,
                  decoration: new InputDecoration(
                    labelText: "EnterName",
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(20))),
                ),
                new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                new TextFormField(
                  controller: _ReEnterNameController,
                  decoration: new InputDecoration(
                    labelText: "Re-Enter Name",
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(20))),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 120,
            right: 120
          ),
          child: new RaisedButton(
            shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20)),
            elevation: 15,
            color: Colors.teal,
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10
            ),
            onPressed: ()=>update(),
            child: new Center(child: new Text("Submit",style:new TextStyle(
              color: Colors.white,
              fontSize: 20
            )),),
          ),
        )
      ],
    );
  }

  void update(){
    var url="http://192.168.0.4:8000/change-name";
    http.get(url+'/'+_EnterTemporaryIdController.text+'/'+_ReEnterNameController.text); 
  }
  
  }