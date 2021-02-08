import 'package:flamengo/pages/listCategories/Audio.dart';
import 'package:flamengo/pages/listCategories/Animation.dart';
import 'package:flamengo/pages/listCategories/Film.dart';
import 'package:flamengo/pages/listCategories/PruductionServices.dart';
import 'package:flutter/material.dart';
import 'package:flamengo/data/PutData.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  double widthAll = 100;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    widthAll = width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.white,
          title: Text(
            "Categories",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "CATEGORIES",
              ),
              Tab(text: "INTERESTED"),
            ],
            isScrollable: false,
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Expanded(
              child: Container(
                width: widthAll,
                child: ListView.builder(
                    itemCount: PutData().photos.imagePost.length,
                    itemBuilder: (context, index) {
                      return Center(
                          child: SizedBox(
                              child: ListTile(
                        onTap: () {
                          switch (index) {
                            case 0:
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Film();
                              }));
                              break;
                            case 1:
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Audio();
                              }));
                              break;
                            case 2:
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return AnimationPage();
                              }));
                              break;
                            case 3:
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ProductionServices();
                              }));
                              break;
                          }
                        },
                        leading: PutData().photos.icons[index],
                        title: Text(
                          (PutData().photos.titleCategory[index].toString()),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle:
                            Text(PutData().photos.titleCategory.toString()),
                        contentPadding: EdgeInsets.all(10),
                      )));
                    }),
              ),
            ),
            Text("")
          ],
        ),
      ),
    );
  }
}
