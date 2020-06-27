import 'package:flutter/material.dart';




class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 40.0),

        RaisedButton(
          child: Text("Login"),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),

        SizedBox(height: 40.0),

        RaisedButton(
          child: Text("Register"),
          onPressed: () {
            Navigator.pushNamed(context, '/registerFirst');
          },
        )
      ],
    );
  }
}
