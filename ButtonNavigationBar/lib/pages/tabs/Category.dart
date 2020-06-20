import 'package:flutter/material.dart';
import '../Product.dart';
class CategortPage extends StatefulWidget {
  CategortPage({Key key}) : super(key: key);

  @override
  _CategortPageState createState() => _CategortPageState();
}

class _CategortPageState extends State<CategortPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          title: Text("I am a CategoryPage"),
          leading: Image.network("https://scontent.fkhh1-2.fna.fbcdn.net/v/t1.0-9/52597953_2001993416521464_1196313086751932416_n.jpg?_nc_cat=111&_nc_sid=85a577&_nc_ohc=Y-QDrnfYH3QAX_gBOhS&_nc_ht=scontent.fkhh1-2.fna&oh=8550ddd5bb773fed548aa5ffdf78a40d&oe=5F13AA62"),
        ),
        SizedBox(height: 20,),
        RaisedButton(
          onPressed: (){

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductPage(title: "我要傳到商品頁面",)
              )
            );
        },
        child: Text("Go to product list"),  
        )
      
      
      ],
    );
  }
}