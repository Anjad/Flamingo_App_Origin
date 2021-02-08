import 'package:flamengo/pages/listCategories/Film.dart';
import 'package:flamengo/pages/login_signUp/LoginPage.dart';
import 'package:flamengo/data/PutData.dart';
import 'package:flamengo/pages/postPage/PostPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}
 
class HomePageState extends State<HomePage>{
//  final width = MediaQuery.of().size.width;
    double widthAll=100;    
  @override
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    widthAll=width;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        title: Text("Home",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                  Icons.search
              ),
              color: Colors.black,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context){
                          return PostPage();
                        }
                        )
                );
              }
              )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              InkWell(
                child :Container(
                height: 50,
                width: width-50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey[600]),
                    left: BorderSide(color: Colors.grey[600]),
                    right: BorderSide(color: Colors.grey[600]),
                    top: BorderSide(color: Colors.grey[600]),
                  ),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.search,color: Colors.grey[600],),
                      SizedBox(width: 16,),
                      Expanded(
                          child:Text("What are you looking for?",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
              ),
               _makeList("Pupuler Service",true,250,110,40,widthAll,widthAll/2.5,PutData().photos.imagePost,PutData().photos.titleCategory),
               _makeList("Last Visited", false, 400,225,75, widthAll,widthAll/1.5,PutData().photos.imagePost,PutData().photos.titleCategory)
            ],
          ),
        ),
      ),

    );

  }
  Widget _makeList(String nameList ,bool seeAll,double heightList,
    double heightImagePost,double heightTitlePost,double widthList,double widthItem ,List imagePost,List titlePost){
    
                return Container(
                height: heightList,
                width: widthList,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(nameList,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900)),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        FlatButton(
                            onPressed: null,
                            child: Text("SEE ALL",style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14
                            ),
                            ),
                        ),
                      ],
                    ),
                    Container(
                      width: widthList,
                      height: heightList-95,
                      color: Colors.white,
                      child: ListView.builder(
                      itemCount:imagePost.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: heightList-100,
                          alignment: Alignment.center,
                          width: widthItem,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(
                                  color: Colors.grey[500],
                                  blurRadius: 5
                                  )]
                              ),
                          child: InkWell(
                            onTap: (){
                              switch(index){
                                case 0:
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                        builder: (context){
                                          return Film();
                                        }
                                      )
                                    );
                                break;
                                case 1:
                                break;
                                case 2:
                                case 3:
                              }
                            },
                            child : Column( children: [
                              Container(
                              alignment: Alignment.topCenter,
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:AssetImage(imagePost[index]),
                                          fit: BoxFit.fill
                                      ),
                                    ),
                                    height: heightImagePost,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    width: widthItem,
                                    height: heightTitlePost,
                                    child: Container(
                                      child : Text(titlePost[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w900
                                      ),
                                      ),
                                    ),

                                  )
                                ],
                              ),
                            ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    ),
                  ],
                ),
              );
  }
}