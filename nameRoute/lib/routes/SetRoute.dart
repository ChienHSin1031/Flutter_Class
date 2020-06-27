import 'package:flutter/material.dart';

import '../pages/product.dart';
import '../pages/datasheet.dart';
import '../pages/productInfo.dart';

import '../user/login.dart';
import '../user/registerFirst.dart';
import '../user/registerSecondPage.dart';
import '../user/registerThird.dart';
import '../pages/AppBarDemoPage.dart';
import '../Tabs.dart';

final routes = {
  '/product': (context, {arguments}) => ProductPage(),
  '/': (context, {arguments}) => Tabs(),
  '/datasheet': (context, {arguments}) => DatasheetPage(arguments: arguments), //附值路由傳參
  '/productInfo':(context, {arguments}) => ProductInfo(arguments: arguments),
  '/login': (context,) => LoginPage(),
  '/registerFirst': (context,) => RegisterFirstPage(),
  '/registerSecond': (context,) => RegisterSecondPage(),
  '/registerThird' : (context,) => RegisterThirdPage(),
  '/appBarDemo' : (context,) => AppBarDemoPage(),
};

var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};


// var onGenerateRoute = (RouteSettings settings) {
//   //傳參導航寫法

//   final String name = settings.name;
//   final Function pageContentBuilder = routes[name];

//   if (pageContentBuilder != null) {
//     if (settings.arguments != null) {
//       final Route route = MaterialPageRoute(
//           builder: (context) =>
//               pageContentBuilder(context, arguments: settings.arguments));
//       return route;
//     } else {
//       final Route route =
//           MaterialPageRoute(builder: (context) => pageContentBuilder(context));
//       return route;
//     }
//   }
// };
