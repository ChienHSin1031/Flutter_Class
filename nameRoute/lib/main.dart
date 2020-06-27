
import 'package:flutter/material.dart';

import "routes/SetRoute.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',   //初始加載routes
      // routes: {      //配置routes 命名路由
      //   '/product':(context) => ProductPage(),
      //   '/datasheet': (context) => DatasheetPage(),
      // },
      onGenerateRoute :onGenerateRoute   //切換路由(傳參寫法)
      
    );
  }
}
