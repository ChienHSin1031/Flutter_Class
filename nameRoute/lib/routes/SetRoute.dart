
import 'package:flutter/material.dart';

import '../pages/product.dart';
import '../pages/datasheet.dart';
import '../pages/productInfo.dart';

import '../user/login.dart';
import '../user/registerFirst.dart';
import '../user/registerSecondPage.dart';
import '../user/registerThird.dart';
import '../pages/AppBarDemoPage.dart';
import '../pages/TabBarController.dart';
import '../Tabs.dart';

final routes = {
  '/': (context, {arguments}) => Tabs(),

  '/product': (context, {arguments}) => ProductPage(),
  '/datasheet': (context, {arguments}) => DatasheetPage(arguments: arguments), //附值路由傳參
  '/productInfo':(context, {arguments}) => ProductInfo(arguments: arguments),
  '/login': (context,) => LoginPage(),
  '/registerFirst': (context,) => RegisterFirstPage(),
  '/registerSecond': (context,) => RegisterSecondPage(),
  '/registerThird' : (context,) => RegisterThirdPage(),
  '/appBarDemo' : (context,) => AppBarDemoPage(),
  // '/tabBarController' : (context,) => TabBarControllerPage(),
  '/tabBarController' : (context) => TabBarControllerPage(),
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

