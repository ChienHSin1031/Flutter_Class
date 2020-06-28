import 'package:flutter/material.dart';
//TabController 實現頂部Tab切換
//1. 必須繼承 StatefulWidget and SingleTickerProviderStateMixin
//2. 實例化構造式
//3. TabBar and TabBarVirw 都需設置 controller 

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {    //1. SingleTickerProviderStateMixin 
  TabController _tabController;   //必須定義一個 TabController Widget 

  @override
  void initState() {  //Widget 初始化生命週期函數 加載Widget時立刻觸發
    super.initState();  //固定寫法
    _tabController = new TabController(    //2. 實例化 TabController  
      length: 2,      //頂部 tab 數量
      vsync: this);   //固定寫法

      _tabController.addListener(() {    //tab 觸發事件 
        print(_tabController.index);   //print 選中的 Tab index   
      });
  }
  @override
  void dispose() {   //生命週期函數 在app 銷毀前觸發這方法
    super.dispose(); //常用於釋放資源
    _tabController.dispose();   // 銷毀 _tabController 可加可不加
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarController Demo"),
        bottom: TabBar(
          //頂部 Tab 設置
          controller: this._tabController,  //必須設置 controller
          tabs: <Widget>[
            Tab(text: "推薦"),
            Tab(text: "熱門"),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: Text("推薦"),
          ),
          Center(
            child: Text("熱門"),
          ),
        ],
      ),
    );
  }
}
