import 'package:flutter/material.dart';


class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register-Basic Information'),
        ),
        body: Column(
          children: <Widget>[
            Text("第一步-基本資料"),
            SizedBox(height: 40.0),
            RaisedButton(
                child: Text("下一步-手機驗證"),
                onPressed: () {
                  Navigator.pushNamed(context, '/registerSecond');
                })
          ],
        ));
  }
}
