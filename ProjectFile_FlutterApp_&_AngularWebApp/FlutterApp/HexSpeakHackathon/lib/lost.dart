import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Lost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
  title: 'Retrieve Certificate',
  home: new RetrieveCertificate(),
  theme: new ThemeData(primarySwatch: Colors.teal),
);
  }
}
class RetrieveCertificate extends StatefulWidget {
  @override
  _RetrieveCertificateState createState() => _RetrieveCertificateState();
}

class _RetrieveCertificateState extends State<RetrieveCertificate> {
//var  _currentItemSelected = 'Ghaziabad'; 
//var _city = ['Ghaziabad','Ghaziabad','Ghaziabad','Ghaziabad'];
int selected=1;
String data="Date Of Birth";
String data1="Child Name";
String date="DateOfBirth";
String name="ChildName";
final _ReferenceMobileController=TextEditingController();
final _DateController=TextEditingController();
final _NameController=TextEditingController();


  
  



  setSelected(int val)
{
  setState(() {
   selected=val;
   data1 = "Child Name";
   data = "Date of Birth";
   date="DateOfBirth";
   name="ChildName";
  });
  
}

setSelected1(int val)
{
  setState(() {
   selected=val; 
   data1="Name";
   data = "Date of Death";
   date="DateOfDeath";
   name="DeceasedName";
  });

}
  
  Widget build(BuildContext context) {
    return Theme(
      data: new ThemeData(
        primarySwatch: Colors.teal
      ),
          child: Scaffold(

        appBar: new AppBar(
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: const Icon(Icons.arrow_back),
          onPressed: () {  Navigator.pop(context); },
              );
            },
          ),
          
          title: new Text('Retrive Lost Data'),
        ),
        body: new Column(children: <Widget>[
          new Container(child:
              new Row(children: <Widget>[

            Radio(
              onChanged: (val){
                setSelected(val);
              
              },
              value: 1,
              groupValue: selected,
              activeColor: Colors.teal,
            ),
             new Text('Birth',style: new TextStyle(
                fontSize: 20,
                
              ),
              ),
            new Padding(padding:EdgeInsets.all(25)), 
               Radio(
              
              
               onChanged: (val){
                setSelected1(val);
                
              },
              value: 2,
              groupValue: selected,
              activeColor: Colors.teal,
            ),
             new Text('Death',style: new TextStyle(
                fontSize: 20,
               ),
              ),
              ]
            ),
          ),
          new Container( 
            padding: EdgeInsets.only(
              left: 10,
              right: 10
            ),
            child: new Column(
              children: <Widget>[
                new TextFormField(
                  controller: _ReferenceMobileController,
                  decoration: new InputDecoration(
                    
                   border:  new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                            borderSide: new BorderSide(
                            )),
                            fillColor: Colors.red,
                  // hintText: 'Please Enter your unique-id',
                    labelText: 'Reference Mobile Number'
                  ),
                ),
                new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                    
                new TextFormField(
                  controller: _NameController,
                   //initialValue: 'agb',
                  decoration: new InputDecoration(
                    
                   border:  new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                            borderSide: new BorderSide(
                            )),
                            fillColor: Colors.red,
                  // hintText: 'Please Enter your unique-id',
                    labelText: data1
                  ),
                  
                ),
                /*padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                ),*/
                new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                new TextFormField(
                  controller: _DateController,
                   
                  decoration: new InputDecoration(
                    hintText: 'DD/MM/YYYY',
                  border:  new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                            borderSide: new BorderSide(
                            )),
                            fillColor: Colors.red,
                  // hintText: 'Please Enter your unique-id',
                    labelText: data
                  ),
                  
                ),
              ],
            ),
          ),
          new Container(
                  
                  child: new RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20)),
                    padding: EdgeInsets.only(
                      left: 50,
                      right: 50,
                      top: 20,
                      bottom: 20
                    ),
                    child: new Text('Retrieve',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      ),
                    elevation: 15,
                    onPressed: () => retrieve(),
                    color: Colors.teal,
                  ),
                  margin: new EdgeInsets.only(
                    top: 20.0
                  ),
                )
        ]
                   ),
           ),
    );
  }
  void retrieve(){
    setState(() {
      
    
    if(selected==1){
    var Map={
      'ReferenceMobileNumber':_ReferenceMobileController.text,
      'FirstName':_NameController.text,
      'DateOfBirth':_DateController.text,
      //'DeceasedName':_NameController.text,
          };
          http.post("http://192.168.0.4:8000/retrieve-id/", body: json.encode(Map), headers: {'Content-type': 'application/json'}).then((res) {print(res);});
  }
          else{
            var Map={
      'ReferenceMobileNumber':_ReferenceMobileController.text,
      'FirstName':_NameController.text,
      'DateOfDeath':_DateController.text,
          };
          http.post("http://192.168.0.4:8000/retrieve-id/", body: json.encode(Map), headers: {'Content-type': 'application/json'}).then((res) {print(res);});
  }
  });
  
}
}