import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Faq1()
    );
  }
}
class Faq1 extends StatefulWidget {
  @override
  _Faq1State createState() => _Faq1State();
}

class _Faq1State extends State<Faq1> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: new ThemeData(
          primarySwatch: Colors.teal
        ),
          child: new Scaffold(
            appBar: new AppBar(
              title: new Text("Frequently Asked Questions"),
              leading: Builder(
                builder: (BuildContext context){
                  return IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  );
                }
              )
            ),
            body: faqbody()
          ),
    );  
  }
}
  Widget faqbody(){
    return ListView(
      children: <Widget>[
        Padding(padding:EdgeInsets.only(top: 20)),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           new Text("Civil Registration System",style: new TextStyle(
             fontSize: 20,
             fontWeight:  FontWeight.bold,
             color: Colors.blue
           ),)
        ],  
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        new Container(
          padding: EdgeInsets.all(10),
          child:
            new Text('''Civil Registration SystemCivil Registration is a continuous, permanent, compulsory recording of the occurrence and characteristics of vital events, like births, deaths and still births.  In India the registration of births and deaths is carried out under provisions of the Registration of Birth  and  Death  (RBD)  Act,  1969  and  Registrar  General,  India  is  entrusted  with  the responsibilities of co-ordinating and unifying  the activities of  the Chief  Registrar of Births and Deaths.  Chief Registrar of Birthsand Deaths in each States/UTs is the implementing authority and the registration of births and deaths is done by the local registrars appointed by the State Government under whose jurisdiction the event has taken place.  It is the duty of the Chief Registrar to compile, publish and submit the Annual Statistical Report based on Civil Registration System to the State Government as well as Registrar General, India.At the National level, about 85.6% of births and 70.9% of deaths are reported to have been registered during 2013.''',style: 
            new TextStyle(
              wordSpacing: 5,
              fontSize: 15,
            ),)
        ),
        Padding(padding: EdgeInsets.only(top:10),),
        new Container(
          padding: EdgeInsets.all(10),
          child: new Text('''1.What is the time period prescribed for registering the event?''',style: new TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          )),
        ),
        new Container(
          padding: EdgeInsets.all(10),
          child: new Text('''If event ofabirth or death is reported for registration to the prescribed authority withinthe normal period of 21days, no fee would be charged.''',style: new TextStyle(
            fontSize: 15,
          )),
        ),
        new Container(
          padding: EdgeInsets.all(10),
          child: new Text('''2. Is there any fee for registrationof births and deaths?''',style: new TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          )),
        ),
        new Container(
          padding: EdgeInsets.all(10),
          child: new Text('''If event of a birth or death is reported for registration to the prescribed authority withinthe normal period of 21days, no fee would be charged.''',style: new TextStyle(
            fontSize: 15,
          )),
        ),
        new Container(
          padding: EdgeInsets.all(15),
          child: new Text('''3. Whether registration can be made after the normal period ofreporting?''',style: new TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          )),
        ),
        new Container(
          padding: EdgeInsets.all(10),
          child: new Text('''If  any event  of  birth  or  death  is  not  reported  for  registration  within  21 days,  the  same can  be  reported  any  time  under  the  Delayed  Registration  provisions  prescribed  under Section 13 of the Actwith payment of fee prescribed.''',style: new TextStyle(
            fontSize: 15,
          )),
        ),
        new Container(
          padding: EdgeInsets.all(15),
          child: new Text('''4. How many copies of birth or death certificate can be obtained?''',style: new TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          )),
        ),
        new Container(
          padding: EdgeInsets.all(10),
          child: new Text('''One free copy of birth / death certificate is issued to the informant under Section 12 of the RBD Act.Under the provision of Section 17 ofthe Act, any number of copies can be obtained by any oneafterpaying the prescribed fee.''',style: new TextStyle(
            fontSize: 15,
          )),
        ),
         new Container(
          padding: EdgeInsets.all(15),
          child: new Text('''5. Whether a birth certificate can be obtained without the name of a child?''',style: new TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          )),
        ),
        new Container(
          padding: EdgeInsets.all(10),
          child: new Text('''Under the provision of Section 14 of the Act, a birth certificate can be obtained withoutthe  name  of  the  child.    In  such  cases,  the  name  can  be  enteredby  the  concerned registration  authoritywithout  any  charge  within  12 months  and  by  charging  the prescribed fee upto 15 years (fromthe date of registration).''',style: new TextStyle(
            fontSize: 15,
          )),
        ),
      ],
      );
  }


