import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        title: Text("Inbox",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child:Container(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                  "assets/images/messaging.png"
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              child: Column(
                children: <Widget>[
                  Text("No messages yet",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),  
                  ),
                  SizedBox(height: 10,),
                  Text("Start conversation with freelancer,and get the job done",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),  
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
