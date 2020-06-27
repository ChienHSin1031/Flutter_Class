
import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  Map arguments;
  ProductInfo({Key key, this.arguments}) : super(key: key);

  @override
  _ProductInfoState createState() => _ProductInfoState(arguments:this.arguments);
}

class _ProductInfoState extends State<ProductInfo> {
  Map arguments;
  _ProductInfoState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("Return"),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        appBar: AppBar(title: Text("Product Infomation")),
        body: Container(
            width: 300.0,
            height: 500.0,
            child: Column(
              children: <Widget>[
                Card(
                  child: Image.network(
                      "https://scontent.fkhh1-1.fna.fbcdn.net/v/t1.0-9/74848865_2437800872940714_5065245255058587648_o.jpg?_nc_cat=106&_nc_sid=dd9801&_nc_ohc=GCKLgkSARUkAX_D4bAB&_nc_ht=scontent.fkhh1-1.fna&oh=e560211fde7e71e6b90e62f002fdfb03&oe=5F19521B"),
                ),
                Text("I am Product Information:${arguments != null ? arguments["name"] : '0'}, ${arguments["Quantity"]}, ${arguments["Image"]}"),
              ],
            )),
      ),
    );
  }
}
//Text("I am Datasheet Page Id is ${arguments != null ? arguments['id'] : '0'}"),
