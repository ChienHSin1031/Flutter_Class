import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('登入頁面'),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 40.0),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Login"),
            ),
            SizedBox(height: 40.0),
          ],
        ));
  }
}
