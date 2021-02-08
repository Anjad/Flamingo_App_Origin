import 'package:flamengo/pages/mainPages/MainPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignupPage.dart';
class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }

}
class LoginState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.blue[900],
                        Colors.blue[800],
                        Colors.blueAccent[400]
                      ]
                  )
              ),
              height: 200,
              width: width,
              alignment:Alignment.bottomLeft,
              padding: EdgeInsets.all(30),
              child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Login",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                    ),
                  ],
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent,
                              blurRadius: 10,
                              offset: Offset(0, 10)
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey[300]
                                  ),
                                )
                              ),
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Username or Email",
                                  icon: Icon(Icons.person),
                                  hintText: "Enter Username or Email",
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(Icons.remove_red_eye),
                                  labelText: "Password",
                                  hintText: "Enter Password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  SizedBox(height: 20,),
                      Center(child: Text("Forgot Password?", style: TextStyle(color: Colors.blueAccent),)
                      ),
                  SizedBox(height: 30,),
                  Column(
                    children: [
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,MaterialPageRoute(
                                builder: (context){
                                  return MainPage();
                                }
                            )
                            );
                          },
                        child :Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 60),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(0, 76, 152, 1),
                          ),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        ),
                      ),
                      SizedBox(height: 10,),
                          Center(
                              child:Row(
                                children: [
                                  FlatButton(
                                    onPressed:(){
                                      Navigator.push(
                                          context,MaterialPageRoute(
                                          builder: (context){
                                            return SignUp();
                                          }
                                          )
                                      );
                                    },
                                    child: Text("Create Account",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blueAccent

                                      ),
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    textColor: Colors.blue,
                                  ),
                                  Text("or Continue with Social media",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[800]
                                    ),
                                  )
                                ],
                              )
                          ),
                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue[800]
                              ),
                              child: Center(
                                child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ),
                          SizedBox(width: 30,),
                          Expanded(
                            child:Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red[800]
                              ),
                              child: Center(
                                child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 50,),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}