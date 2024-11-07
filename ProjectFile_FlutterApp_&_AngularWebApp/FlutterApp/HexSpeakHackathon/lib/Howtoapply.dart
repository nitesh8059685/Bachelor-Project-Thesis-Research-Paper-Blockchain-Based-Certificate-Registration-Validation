import 'package:flutter/material.dart';

class Apply extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HowToApply(),
    );
  }
}

class HowToApply extends StatefulWidget {
  @override
  _HowToApplyState createState() => _HowToApplyState();
}

class _HowToApplyState extends State<HowToApply> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: new ThemeData(primarySwatch: Colors.teal ),
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("How To Apply"),
          leading: new Builder(builder: (BuildContext context){
            return IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            );
          },
          ),
        ),
        body: apply(),
      ),  
    );
  }

  Widget apply(){
    return ListView(
      children: <Widget>[
        new Container(
          padding: const EdgeInsets.all(20),
          child: new Text("Online Registration of Birth and Death through this Portal:",style: new TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
        ),
        new Container(
            padding: EdgeInsets.only(left: 10),
            child: new ListTile(
            leading: MyBullet(),
            title: new Text('''How to report an event online to the concerned registrar for registration of births and deaths?'''),
          ),
        ),
        new Container(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              children: <Widget>[
                new ListTile(
                leading: MyBullet1(),
                title: new Text('''The births and deaths are registered at the place of occurrence of the event and by the concerned registrar under whom jurisdiction the event has takenplace.'''),
              ),
              new ListTile(
                leading: MyBullet1(),
                title: new Text('''The institutional events can not be reported by the family members, it is duty of the in-charge of the institution to report such events to concernedregistrar.'''),
              ),
              new ListTile(
                leading: MyBullet1(),
                title: new Text('''Through this portal,general public may report only domiciliary (house/home) events within 21 days of the occurrence of the event. If the event has crossed the limit of 21 days, one must approach the office of the concerned Registrar(B&D).'''),
              ),
              new ListTile(
                leading: MyBullet1(),
                title: new Text('''At the time of  sign-up, users will be able to register for the functional  registration    units    only    i.e.    the registration    units    where    this centralized  applicationisbeingusedforregistrationofbirthsanddeathsandinthedropdown  list  of  registration  unit  at  sign-up  page,  only  these  RUs  will  get listed  because  it  has  not  been  implemented  in  all  the  RUs  of  the country.'''),
              ),
              new ListTile(
                leading: MyBullet1(),
                title: new Text('''Get  the  print  out  of  the  application  and  forward  to  the  concerned Registrar BY  HANDat  the  given  address  (address  will  appear  on  the  bottom  of  the  print  out  of  application)   along  with   the   requisite documents   (the   details   of   the   documents   required   are   given   in subsequentpara).'''),
              ),
              new ListTile(
                leading: MyBullet1(),
                title: new Text('''After   successful   submission   of   the   application,   users   will   get   a confirmation mail on the provided e-mailid.'''),
              ),
              new ListTile(
                leading: MyBullet1(),
                title: new Text('''The users will be informed about the status of the application through e-mail  immediately  after  receipt  of  the  application  by  the  concernedregistrar.'''),
              ),
              new ListTile(
                leading: MyBullet1(),
                title: new Text('''The  details  of  registered  event  will  be  informed  through  e-mail  or  it can be checked anytime from home page of the portal by quoting  the Application ReferenceNumber.'''),
              ),
              ],
            ),
        )
      ],
    );
  } 
}

class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
    height: 10.0,
    width: 10.0,
    decoration: new BoxDecoration(
    color: Colors.black,
    shape: BoxShape.circle,
  ),
  );
  }
}
  class MyBullet1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
    height: 10.0,
    width: 10.0,
    decoration: new BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 2.0,
    ),
    color: Colors.white,
    shape: BoxShape.circle,
  ),
  );
  }
  }