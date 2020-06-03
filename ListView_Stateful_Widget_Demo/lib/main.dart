//Part D 實現 ListView.Builder 從List 實現列表
import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("ListView Builder to print list DATA"),),
        body: LayOut(),
      )
    );
  }
}

class LayOut extends StatelessWidget{
  Widget _getListData(context, index){

    return ListTile(
      contentPadding: EdgeInsets.all(10),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
      leading: Image.network(listData[index]["imageUrl"]),
      trailing: Image.network(listData[index]["imageUrl"]),
    );
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
      );
  }
}





// //Part C ListView.Builder 實現動態列表
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("ListView Build Demo"),
//         ),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget {
  
//   List list = new List();
//   LayOut() {
//     for (var i = 0; i <= 20; i++) {
//          this.list.add("我是第$i列表");
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: this.list.length,
//       itemBuilder: (context, index){
        
//         print(index); 
//         return ListTile(
//           title: Text(this.list[index]),
//                   );
//       },
//       );
//   }
// }

//Part B   使用map獲取動態列表
// import 'package:flutter/material.dart';
// import 'res/listData.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text("StatefulWidge Demo2"),
//       ),
//       body: LayOut(),
//     ));
//   }
// }

// class LayOut extends StatelessWidget {
//   //getData method
//   List<Widget> _getData() {
//     var tempList = listData.map((value) {
//       return ListTile(
//         leading: Image.network(value["imageUrl"]),
//         title: Text(value["title"]),
//         subtitle: Text(value["author"]),
//         trailing: Image.network(value["imageUrl"]),
//       );
//     });
//     return tempList.toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView(
//       children: this._getData(),
//     );
//   }
// }

// Part A  //模擬實作動態列表
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("StatefulWidget Demo")),
//         body: LayOut(),
//       ),
//     );
//   }
// }

// class LayOut extends StatelessWidget {

//   //define method 定義一個方法
//   List<Widget> _getData() {         //返回值必須為 Widget  _ 為私有方法
//     List<Widget> list = new List(); //宣告一個必須傳入 Widget 的 List

//     for (var i = 0; i <= 20; i++) {
//       list.add(
//         ListTile(
//           title: Text("我是第$i列表"),
//         ),
//       );
//     }

//     return list;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: this._getData(),
//     );
//   }
// }
