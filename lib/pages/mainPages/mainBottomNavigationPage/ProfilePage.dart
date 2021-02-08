import 'dart:developer';

import 'package:flamengo/pages/login_signup/LoginPage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double widthAll = 0;
  @override
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    widthAll=width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        actions: <Widget>[
                    IconButton(
              icon: Icon(
                  Icons.settings
              ),
              color: Colors.grey[900],
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context){
                          return LoginPage();
                        }
                        )
                );
              }
              )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.blue[600],
            height: 180,
            width: widthAll,
            child: Padding(
              padding: EdgeInsets.all(20),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    alignment: AlignmentDirectional.topStart,
                    child:Hero(
                      transitionOnUserGestures: true,
                      tag: "Anjad Khalaf",
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          "assets/images/ABHA.jpg"
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child:Text("AnjadKhalaf",
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ) ,
                    )
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child:Text("My personal balance : 0",
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                      ) ,
                    )
                  ),
                  
                ],
              ) 
            ),
          ),
         Expanded(
          child:Container(
          child:ListView(
            children: <Widget>[
              Container(
                width: widthAll,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1),
                      )
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(15),
                          child:Text("My Flamingo",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        ),
                        ListTile(
                          title: Text("Favorite gigs"),
                          leading: Icon(Icons.favorite),
                          onTap: (){},
                        ),
                        ListTile(
                          title: Text("My interest"),
                          leading: Icon(Icons.folder_special),
                          onTap: (){},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 270,
                width: widthAll,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0),
                      )
                    ),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(15),
                          child:Text("Buying",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        ),
                        ListTile(
                          title: Text("Manage order"),
                          leading: Icon(Icons.assignment),
                          onTap: (){},
                        ),
                        ListTile(
                          title: Text("Post request"),
                          leading: Icon(Icons.border_color),
                          onTap: (){},
                        ),
                        ListTile(
                          title: Text("Manage request"),
                          leading: Icon(Icons.assessment),
                          onTap: (){},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
                Container(
                width: widthAll,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(15),
                          child:Text("General",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        ),
                        ListTile(
                          title: Text("Payment"),
                          leading: Icon(Icons.payment),
                          onTap: (){},
                        ),
                        ListTile(
                          title: Text("Invite friends"),
                          leading: Icon(Icons.contact_mail),
                          onTap: (){},
                        ),
                        ListTile(
                          title: Text("Support"),
                          leading: Icon(Icons.data_usage),
                          onTap: (){},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
        )
        ],
      ),    
    );
  }
}
