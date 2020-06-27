import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    indicatorColor: Colors.greenAccent, //選到的tab加上下底線
                    indicatorWeight: 5.0,   //下底線厚度
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.pinkAccent,  //選中的 tab color
                    unselectedLabelColor:  Colors.grey,  //為選中的 tab color

                    tabs: <Widget>[
                    //頂部Tab 需再Scaffold外部設定 DefaultTabController、length
                    Tab(text: "熱銷"),
                    Tab(text: "推薦"),
                    Tab(text: "促銷"),
                    Tab(text: "主打"),
                  ]),
                )
              ],
            ),
          ),
          body: TabBarView(//針對上面TabBar設定的2個Tab,依序寫入相對應的body
              children: <Widget>[
            Image.network(
                "https://scontent.fkhh1-1.fna.fbcdn.net/v/t1.0-9/74848865_2437800872940714_5065245255058587648_o.jpg?_nc_cat=106&_nc_sid=dd9801&_nc_ohc=_bkvLqJAcWIAX8li5DP&_nc_ht=scontent.fkhh1-1.fna&oh=eb1cb6d53f24b5e61feee748826d3e58&oe=5F1D469B"),
            Image.network(
                'https://scontent.fkhh1-2.fna.fbcdn.net/v/t1.0-9/s960x960/106001328_2874865985974734_4682466353478384088_o.jpg?_nc_cat=109&_nc_sid=2d5d41&_nc_ohc=lI4uDD_9xFMAX8MvnNj&_nc_ht=scontent.fkhh1-2.fna&_nc_tp=7&oh=8856af22f92adb698aca7906ce42f192&oe=5F1E2E0C'),
            Image.network('https://scontent.fkhh1-1.fna.fbcdn.net/v/t1.0-9/s960x960/97926082_2772087166252617_1451464659876970496_o.jpg?_nc_cat=102&_nc_sid=2d5d41&_nc_ohc=Z4Z1Tmg7JGAAX_ZharO&_nc_ht=scontent.fkhh1-1.fna&_nc_tp=7&oh=e2cf97bf2f3a7474ab11bd7dd2927961&oe=5F1E162E'),
            Image.network('https://scontent.fkhh1-2.fna.fbcdn.net/v/t1.0-9/52597953_2001993416521464_1196313086751932416_n.jpg?_nc_cat=111&_nc_sid=85a577&_nc_ohc=xpRXlmmM0VsAX9wqkep&_nc_ht=scontent.fkhh1-2.fna&oh=86ea57d0dfc75f3bca4f2bcef50ad448&oe=5F1B9362'),
         
          ]),
        ));
  }
}
