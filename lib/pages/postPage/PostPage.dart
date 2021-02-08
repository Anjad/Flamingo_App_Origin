import 'package:flutter/material.dart';
class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  double widthAll=100;
  @override
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    widthAll=width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: null),
          IconButton(icon: Icon(Icons.favorite_border), onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: widthAll,
                height: 300,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
