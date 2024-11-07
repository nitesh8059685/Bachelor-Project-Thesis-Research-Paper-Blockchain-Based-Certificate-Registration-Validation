import 'package:flutter/material.dart';
import 'mainpage.dart';



class DownloadCertificate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
  title: 'Download Certificate',
  home: new Download(),
  
);
  }
}

class Download extends StatefulWidget {
  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {


int selected;
String data="Child Name";
String data1="Date Of Birth";

  
  @override
 void initState(){
    super.initState();
    selected=1;
  }



  setSelected(int val)
{
  setState(() {
   selected=val;
   data="Child Name";
   data1 = "Date of Birth";
  });
  
}

setSelected1(int val)
{
  setState(() {
   selected=val; 
   data="Name";
   data1 = "Date of Death";
  });

}

/*void _mainpage(){
   Navigator.pop(context);
  }*/
  
  Widget build(BuildContext context) {
    return Theme(
        data: new ThemeData(
          primarySwatch: Colors.teal
        ),
          child: new Scaffold(
        appBar: new AppBar(
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: const Icon(Icons.arrow_back),
          onPressed: () {  setState(() {
           Navigator.pop(context, MaterialPageRoute(builder: (context) => Home()));
          }); },
              );
            },
          ),
          
          title: new Text('Download Certificate'),
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
                  decoration: new InputDecoration(
                    
                   border:  new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                            borderSide: new BorderSide(
                            )),
                            fillColor: Colors.red,
                  // hintText: 'Please Enter your unique-id',
                    labelText: 'UNIQUE ID'
                  ),
                ),
                new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                    
                new TextFormField(
                   //initialValue: 'agb',
                  decoration: new InputDecoration(
                    
                   border:  new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                            borderSide: new BorderSide(
                            )),
                            fillColor: Colors.red,
                  // hintText: 'Please Enter your unique-id',
                    labelText: data
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
                   
                  decoration: new InputDecoration(
                    hintText: "DD/MM/YYYY",
                  border:  new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                            borderSide: new BorderSide(
                            )),
                            fillColor: Colors.red,
                  // hintText: 'Please Enter your unique-id',
                    labelText: data1
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
                    child: new Text('Download',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      ),
                    elevation: 15,
                    onPressed: () => null,
                    color: Colors.teal,
                  ),
                  margin: new EdgeInsets.only(
                    top: 20.0
                  ),
                )
        ]
                   )
           
        ),
    );
    
      
    
  }
}