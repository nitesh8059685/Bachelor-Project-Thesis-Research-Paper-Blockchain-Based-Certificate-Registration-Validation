import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedBack(),
    );
  }
}

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Theme(
          data: new ThemeData(
            primarySwatch: Colors.teal
          ),
          child: new Scaffold(
          appBar: new AppBar(
          title: new Text("Feedback"),     
        ),
        body: body(),
      ),
    );
  }

Widget body(){
  return Container(
    padding: EdgeInsets.all(50),
    child: new Column(
      children: <Widget>[
        new TextFormField(
          keyboardType: TextInputType.text,
          decoration: new InputDecoration(
            border: new OutlineInputBorder(borderRadius: new BorderRadius.circular(15.0),),
            hintText: "Share Your Valueable Comments"
          ),
          maxLines: 8,
          maxLength: 60,
        ),
        Container(
          padding: EdgeInsets.all(50),
          
          child: new RaisedButton(
            padding: EdgeInsets.only(
              top:20,
              bottom:20
            ),
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20)),
            color: Colors.teal,
            onPressed: ()=>null,
            elevation: 15,
            child: new Center(child: new Text("Submit",style: new TextStyle(
              color: Colors.white,
              fontSize: 20
            ),)),
          ),
        )
      ],
    ),
  );
}  
}