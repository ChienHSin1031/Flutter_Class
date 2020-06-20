import 'package:flutter/material.dart';
import '../Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
          RaisedButton(
          onPressed:(){
            Navigator.of(context).push(   //固定寫法
              MaterialPageRoute(
                builder: (context) => SearchPage() //只有針對要切換的頁面(SearchPage)更改
              )
            );
          },
          child: Text("GO to Search Page"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          ),
          
          SizedBox(height: 20.0),

          RaisedButton(
          onPressed:(){

          },
          child: Text("GO to Label Page and Transmission"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          ),

        
      ],
    );
  }
}