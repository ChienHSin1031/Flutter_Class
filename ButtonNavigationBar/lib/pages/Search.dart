import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(    //Scaffold 浮動按鈕 
        child: Text("上一頁"),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text("I am a SearchPage"),
      ),
      body: Text("Search Page body region"),
    );
  }
}