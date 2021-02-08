import 'package:flamengo/data/PutData.dart';
import 'package:flamengo/pages/mainPages/MainPage.dart';
import 'package:flutter/material.dart';
class ProductionServices extends StatefulWidget {
  @override
  _ProductionServicesState createState() => _ProductionServicesState();
}

class _ProductionServicesState extends State<ProductionServices> {
  double widthAll=100;
  @override
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    widthAll=width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:InkWell(
          child:Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context){
                      return MainPage();
                    }
                )
            );
          },
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: null)
        ],
      ),
      backgroundColor: Colors.white,
      body:Column(
        children: <Widget>[
          Container(
            child:Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  width: widthAll,
                  height: 180,
                  child: Center(
                    child:Container(
                      child:Column(
                        children: <Widget>[
                          SizedBox(height: 30,),
                          Icon(
                            Icons.widgets,
                            color: Colors.grey[700],
                            size: widthAll/5,
                          ),
                          Text(
                            "Production service",
                            style: TextStyle(
                                fontSize: 30
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                              "Equipment Rental,Equipment,Maintenance,..."
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Expanded(child:
          Container(
            width: widthAll,
            child:Padding(
                padding: EdgeInsets.only(top: 10),
                child:Container(
                  child: ListView.builder(
                    itemCount:PutData().listProductionTitle.titlePost.length ,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                      return Center(
                        child: ListTile(
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: (){},
                          title:Text(
                            PutData().listProductionTitle.titlePost[index].toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w800
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
            ),
          ),
          )
        ],
      ),
    );
  }
}