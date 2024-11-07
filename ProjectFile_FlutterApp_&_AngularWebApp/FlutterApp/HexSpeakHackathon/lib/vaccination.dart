import 'package:flutter/material.dart';

class VaccineTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Vaccine(),
      
    );
  }
}
class Vaccine extends StatefulWidget {
  @override
  _VaccineState createState() => _VaccineState();
}

class _VaccineState extends State<Vaccine> {
  //bool _sel1 = true;
  bool _sel2 = false;
  bool _sel3 = false;
  bool _sel4 = false;
  //bool _sel5 = true;
  bool _sel6 = false;
  bool _sel7 = false;
  bool _sel8 = false;
  bool _sel9 = false;
  bool _sel10 = false;
  bool _sel11= false;
  bool _sel12= false;
  bool _sel13 = false;
  bool _sel14 = false;
  bool _sel15 = false;
  bool _sel16 = false;
  bool _sel17 = false;
  bool _sel18 = false;
  bool _sel19 = false;
  bool _sel20 = false;
  bool _sel21 = false;
  bool _sel22 = false;
  bool _sel23 = false;
  bool _sel24 = false;
  bool _sel25 = false;
  bool _sel26 = false;
  bool _sel27 = false;
  bool _sel28 = false;
  bool _sel29 = false;
  bool _sel30 = false;

 

  @override
  Widget build(BuildContext context) {
    return Theme(
          data: new ThemeData(
            primarySwatch: Colors.teal
          ),
          child: Scaffold(
        
        appBar: new AppBar(elevation: 15,
          title:new Text('Vaccination Table'),
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                 icon:Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);},
              );
              },
        
          ),
          
        ),
        body:
        
        
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
                  child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                
                label: Text('Vaccine',style: TextStyle(fontSize: 17),)
              ),
              DataColumn(
                label: Text('Birth')
              ),
              DataColumn(
                label: Text('2 Month'),

              ),
              DataColumn(
                label: Text('4 Month')
              ),
              DataColumn(
              label: Text('6 Month')
            ),
            DataColumn(
              label: Text('12 Month')
            ),
            DataColumn(
              label: Text('18 Month')
            ),
            DataColumn(
              label: Text('5-6 Years')

              
            ),
          
    
            
            ],
            rows: <DataRow>[
             DataRow(cells:<DataCell>[
               DataCell(new Text('BCG',style: new TextStyle(fontSize: 15),),),
               DataCell(new Checkbox(
                 onChanged: (bool resp)=>null,
                    value: true,),),
               DataCell(new Checkbox(
                 onChanged: null,
                 value:false
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value:false
                                )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value:false
                 )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value:false
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value:false
                               )),
               DataCell(new Checkbox(
                onChanged: null,
                 value:false
                 
               )),
              

             ],
             

             ),
             //
             DataRow(cells:<DataCell>[
               DataCell(new Text('OPV',style: new TextStyle(fontSize: 15),),),
               DataCell(new Checkbox(
                 onChanged: null,
                 value:false
                   )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel2 = resp;
                         
                   });},
                  value: _sel2
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel3 = resp;
                         
                   });},
                  value: _sel3               )),
               DataCell(new Checkbox(
                  onChanged: (bool resp){
                    setState(() {
                         _sel4 = resp;
                         
                   });},
                  value: _sel4
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,  
                 
                 value: false,
               )),
              

             ],
             ),
             ////////////////////
             DataRow(cells:<DataCell>[
               DataCell(new Text('Hepatitis B',style: new TextStyle(fontSize: 15),),),
               DataCell(new Checkbox(
                  onChanged: (bool resp)=>null,
                  value: true
               )),
               DataCell(new Checkbox(
                  onChanged: (bool resp){
                    setState(() {
                         _sel6 = resp;
                         
                   });},
                  value: _sel6
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false
               )),
               DataCell(new Checkbox(
                  onChanged: (bool resp){
                    setState(() {
                         _sel7 = resp;
                         
                   });},
                  value: _sel7
               )),
               DataCell(new Checkbox(
                  onChanged: (bool resp){
                    setState(() {
                         _sel8 = resp;
                         
                   });},
                  value: _sel8               )),
               DataCell(new Checkbox(
                onChanged: (bool resp){
                    setState(() {
                         _sel9 = resp;
                         
                   });},
                  value: _sel9
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
              

             ],),
             //
             DataRow(cells:<DataCell>[
               DataCell(new Text('DTP',style: new TextStyle(fontSize: 15),),),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel10 = resp;
                         
                   });},
                  value: _sel10  
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel11 = resp;
                         
                   });},
                  value: _sel11 
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel12 = resp;
                         
                   });},
                  value: _sel12                )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel13 = resp;
                         
                   });},
                  value: _sel13               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel14 = resp;
                         
                   });},
                  value: _sel14  
               )),
              

             ],),
             DataRow(cells:<DataCell>[
               DataCell(new Text('HiB',style: new TextStyle(fontSize: 15),),),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel15 = resp;
                         
                   });},
                  value: _sel15  
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel16 = resp;
                         
                   });},
                  value: _sel16
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel17 = resp;
                         
                   });},
                  value: _sel17 
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel18 = resp;
                         
                   });},
                  value: _sel18                 )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
              //////////////////////////

             ],),
             DataRow(cells:<DataCell>[
               DataCell(new Text('Rotavirus',style: new TextStyle(fontSize: 15),),),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                onChanged: (bool resp){
                    setState(() {
                         _sel19 = resp;
                         
                   });},
                  value: _sel19
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel20 = resp;
                         
                   });},
                  value: _sel20
               )),
               DataCell(new Checkbox(
                  onChanged: null,

                    value: false,
               )),
               DataCell(new Checkbox(
                 onChanged:null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
              

             ],),
             //////
             DataRow(cells:<DataCell>[
               DataCell(new Text('MMR',style: new TextStyle(fontSize: 15),),),
               DataCell(new Checkbox(
                 onChanged:null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel21 = resp;
                         
                   });},
                  value: _sel21
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel22 = resp;
                         
                   });},
                  value: _sel22
               )),
              

             ],),
             /////
             DataRow(cells:<DataCell>[
               DataCell(new Text('Varicella',style: new TextStyle(fontSize: 15),),),
                   DataCell(new Checkbox(
                 onChanged:null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel23 = resp;
                         
                   });},
                  value: _sel23
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel24 = resp;
                         
                   });},
                  value: _sel24
               )),
          

             ],),
             ///
             DataRow(cells:<DataCell>[
               DataCell(new Text('Hepatitis A',style: new TextStyle(fontSize: 15),),),
                     DataCell(new Checkbox(
                 onChanged:null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                  value: false
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel25 = resp;
                         
                   });},
                  value: _sel25
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel26 = resp;
                         
                   });},
                  value: _sel26

               )),
               DataCell(new Checkbox(
                 onChanged: null,
                  value: false
               )),
         

             ],),
             //
             DataRow(cells:<DataCell>[
               DataCell(new Text('PCV',style: new TextStyle(fontSize: 15),),),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel27 = resp;
                         
                   });},
                  value: _sel27

               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel28 = resp;
                         
                   });},
                  value: _sel28

               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel29 = resp;
                         
                   });},
                  value: _sel29
               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
               DataCell(new Checkbox(
                 onChanged: (bool resp){
                    setState(() {
                         _sel30 = resp;
                         
                   });},
                  value: _sel30

               )),
               DataCell(new Checkbox(
                 onChanged: null,
                 value: false,
               )),
              

             ],),
             
             ],
            
            
                           
              
                  

                  
                
                    
              
            ),
        ),
          

        ),
        
        
        
        
              );
    

  }
}