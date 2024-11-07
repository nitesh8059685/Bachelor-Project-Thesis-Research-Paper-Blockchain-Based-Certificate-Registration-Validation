import 'package:flutter/material.dart';

class Changemobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login page",
      home: new ChangeMobile(),     
    );
  }
}


class ChangeMobile extends StatefulWidget {
  @override
  _ChangeMobileState createState() => _ChangeMobileState();
}

class _ChangeMobileState extends State<ChangeMobile> {
  
  
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: new ThemeData(
        primarySwatch: Colors.teal
      ),
          child: Scaffold(
        appBar: new AppBar(
          title: new Text("Change Mobile Number"),
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: const Icon(Icons.arrow_back),
          onPressed: () {  Navigator.pop(context); },
              );
            },
          ),
        ),
        body: _body(),
      ),
    );
  }




Widget _body(){
return new Container(
      padding: EdgeInsets.only(
        top: 50,
        right: 10,
        left: 10,
      ),
      child: new Form(
        child:new Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 50,
                right: 50
              ),
              child: new TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20),
                  ),
                  labelText: "Enter Unique_id"
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(10),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 50,
                right: 50
              ),
              child: new TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20),
                  ),
                  labelText: "Date Of Birth",
                  hintText: "DD/MM/YYYY" 
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(10),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 50,
                right: 50
              ),
              child: new TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20),
                  ),
                  labelText: "Registered Mobile No."
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(10),
            ),
            new RaisedButton(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              top: 20,
              bottom: 20
            ),
            onPressed: ()=>null,
            child: new Text("Send Otp",style: new TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
            elevation: 20,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20)),
            color: Colors.teal,
          )
          ],
        )
      ),
);
}

}