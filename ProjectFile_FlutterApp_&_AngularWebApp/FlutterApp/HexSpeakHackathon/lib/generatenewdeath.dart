import 'package:flutter/material.dart';
import 'registrationdeath.dart';
import 'hospitalgeneration.dart';

class GenerateDeath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GenerateNewDeath(),
    );
  }
}
class GenerateNewDeath extends StatefulWidget {
  @override
  _GenerateNewDeathState createState() => _GenerateNewDeathState();
}

class _GenerateNewDeathState extends State<GenerateNewDeath> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: new ThemeData(
        primarySwatch: Colors.teal
      ),
      child: new Scaffold(
        appBar: new AppBar(
          title:new Text("Registration"),
        ),
        body:  registrationbody(),
      ),
    );
  }

  Widget registrationbody(){
    return Container(
      padding: EdgeInsets.only(
        left: 50,
        right: 50,
        top: 200,
      ),
      child: new Column(
        children: <Widget>[
          new RaisedButton(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterDeath()));
            },
            color: Colors.teal,
            elevation: 15,
            child: new Center(child: new Text("Generate New At Home",style: new TextStyle(
              fontSize: 20,
              color: Colors.white
            ),),),
          ),
          new Padding(
            padding: EdgeInsets.all(20),
          ),
          new RaisedButton(
            elevation: 15,
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HospitalGeneration()));
            },
            color: Colors.teal,
            child: new Center(child: new Text("Generate New Based On Hospital",style: new TextStyle(
              fontSize: 20,
              color: Colors.white
            ),),),
          ),
        ],
      ),
      );
  }
}