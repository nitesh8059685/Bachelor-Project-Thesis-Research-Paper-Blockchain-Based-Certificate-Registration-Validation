import 'package:flutter/material.dart';


class CheckStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
  title: 'Retrieve Certificate',
  home: new Check(),
  theme: new ThemeData(primarySwatch: Colors.teal),
);
  }
}
class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
//var  _currentItemSelected = 'Ghaziabad'; 
//var _city = ['Ghaziabad','Ghaziabad','Ghaziabad','Ghaziabad'];
int selected;
String data="DOB";
String data1="Child Name";



  
  @override
 void initState(){
    super.initState();
    selected=1;
  }



  setSelected(int val)
{
  setState(() {
   selected=val;
  
  });
  
}

setSelected1(int val)
{
  setState(() {
   selected=val; 
   data1="Name";
   data = "Date of Death";
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
          
          title: new Text('Check Status'),
        ),
        body: new Column(
          
          
          //child: new Row(
            children: <Widget>[
              new Row(
                children: <Widget>[

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
       new Container( 
         margin: EdgeInsets.only(
           left:10,
           right:10
         ),
          child: new Form(
             child: new Column(
               children: <Widget>[
                 

                 
                 
                new TextFormField(
                  
                  
                  
                  decoration: new InputDecoration(
                  border:  new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                  ),
                            fillColor: Colors.red,
                  // hintText: 'Please Enter your unique-id',
                    labelText: 'Temporary-ID'
                  ),
                ),
                
                               
          
      
                new Container(
                  
                  child: new RaisedButton(
                    
                    padding: EdgeInsets.all(20),
                    child: new Text(
                      
               
                      'Check Status',
                      style: new TextStyle(
                        color: Colors.white,
                      ),
                      
                    ),
                    elevation: 15,
                    highlightColor: Colors.blue,
                    
                    onPressed: () => null,
                    color: Colors.teal,
                  ),
                  margin: new EdgeInsets.only(
                    top: 30.0
                  ),
                )
               ],
             ),)
           ) 
           ],
          )
           ),
    );
  }
}