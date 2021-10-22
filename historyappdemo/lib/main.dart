// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:historyappdemo/detail.dart';
import 'package:historyappdemo/listwidget.dart';
import 'package:historyappdemo/shared/listitem.dart';
import 'package:lipsum/lipsum.dart' as lipsum;


void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

      //Make list item
    List<ListItem> listTiles = [
      ListItem(
      "https://img.vietnamfinance.vn/webp-jpg/700x0/upload/news/quynhtrang/2020/1/20/anh-1-15789339707761162008354-crop-1578933978308642745760.webp",
       lipsum.createWord(numWords: 6),
        " 200",
      "28 Jan 2020",
      ),
      ListItem(
        "https://image.xahoi.com.vn/news/2012/10/23/bui-thi-xuan.jpg",
        lipsum.createWord(numWords: 6),
        lipsum.createWord(numWords: 2),
        "28 Jan 2020",
      ),
      ListItem(
        "https://photo-cms-kienthuc.zadn.vn/zoom/800/Uploaded/thuhien/2020_12_17/3_YTMS.jpg",
        lipsum.createWord(numWords: 6),
        lipsum.createWord(numWords: 2),
        "28 Jan 2020",
      ),
      ListItem(
        "https://streaming1.danviet.vn/upload/1-2020/images/2020-02-26/3-bi-an-den-nay-van-chua-co-loi-giai-trong-lich-su-Viet-Nam-1134-1582732456-width800height600.jpg",
        lipsum.createWord(numWords: 6),
        lipsum.createWord(numWords: 2),
        "28 Jan 2020",
      ),
      ListItem(
        "https://chuaadida.com/Images/News/chuaadida_full_10-bi-an-chua-co-loi-giai-trong-lich-su-viet-nam-phan-2.jpg",
        lipsum.createWord(numWords: 6),
        lipsum.createWord(numWords: 2),
        "28 Jan 2020",
      ),
      ListItem(
        "https://image.xahoi.com.vn/news/2012/10/23/bui-thi-xuan.jpg",
        lipsum.createWord(numWords: 6),
        lipsum.createWord(numWords: 2),
        "28 Jan 2020",
      ),
      ListItem(
        "https://photo-cms-kienthuc.zadn.vn/zoom/800/Uploaded/thuhien/2020_12_17/3_YTMS.jpg",
        lipsum.createWord(numWords: 6),
        lipsum.createWord(numWords: 2),
        "28 Jan 2020",
      ),
      ListItem(
        "https://streaming1.danviet.vn/upload/1-2020/images/2020-02-26/3-bi-an-den-nay-van-chua-co-loi-giai-trong-lich-su-Viet-Nam-1134-1582732456-width800height600.jpg",
        lipsum.createWord(numWords: 6),
        lipsum.createWord(numWords: 2),
        "28 Jan 2020",
      ),
      ListItem(
        "https://chuaadida.com/Images/News/chuaadida_full_10-bi-an-chua-co-loi-giai-trong-lich-su-viet-nam-phan-2.jpg",
        lipsum.createWord(numWords: 6),
        lipsum.createWord(numWords: 2),
        "28 Jan 2020",
      ),
  ];

      final List<Tab> _tabList = [
      Tab(
          child: Text("Top"),
      ),
      Tab(
          child: Text("Popular"),
      ),
      Tab(
          child: Text("Trending"),
      ),
      Tab(
          child: Text("Editor Choice"),
      ),
      Tab(
          child: Text("Cartagory"),
      ),
    ];

     TabController _tabController;

     @override
     void initState() {
    // TODO: implement initState
        super.initState();
        _tabController = TabController(vsync: this, length: _tabList.length);
     }
     @override
     void dispose() {
    // TODO: implement dispose
       _tabController.dispose();
        super.dispose();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
              Icons.menu,
              color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "History App",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            controller: _tabController,
            tabs: _tabList,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                itemCount: listTiles.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (
                        ) {
                      //detail
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:(context) => DetailsScreen(
                              item: listTiles[index],
                              tag: listTiles[index].newsTitle,
                            )));
                    },
                    child: listWidget(listTiles[index]),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
        ],
      ),
    );
  }
}
