
import 'package:flutter/material.dart';
import '../Tabs.dart';
class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Return"),
        ),
        appBar: AppBar(
          title: Text('Register-Email verification'),
        ),
        body: Column(
          children: <Widget>[
            Text("第三步-Email驗證"),
            SizedBox(height: 40.0),
            RaisedButton(
                child: Text("Complete"),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(builder: (context) => new Tabs(index: 2)),
                      (route) => route == null
                    );
                })
          ],
        ));
  }
}
