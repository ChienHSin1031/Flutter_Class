
import 'package:flutter/material.dart';

class DatasheetPage extends StatelessWidget {
  final arguments;
  DatasheetPage({this.arguments});

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
        appBar: AppBar(
          title: Text("NameRoute and transmission parameter"),
        ),
        body: Text("I am Datasheet Page Id is ${arguments != null ? arguments['id'] : '0'}"),
      ),
    );
  }
}

// class DatasheetPage extends StatefulWidget {
//   final arguments;
//   DatasheetPage({this.arguments});

//   @override
//   _DatasheetPageState createState() => _DatasheetPageState();
// }

// class _DatasheetPageState extends State<DatasheetPage> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           child: Text("Return"),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         appBar: AppBar(
//           title: Text("Data Sheet Page"),
//         ),
//         body: Text(
//                   "I am Data sheet Page Data with${arguments != null ? arguments['id'] : '0'}")
//       ),
//     );
//   }
// }
