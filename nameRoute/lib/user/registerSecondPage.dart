import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key key, }) : super(key: key);

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
          title: Text('Register-Phone verification'),
        ),
        body: Column(
          children: <Widget>[
            Text("第二步-手機驗證"),
            SizedBox(height: 40.0),
            RaisedButton(
                child: Text("下一步-Email驗證"),
                onPressed: () {
                  // Navigator.pushNamed(context, '/registerThird');
                  Navigator.pushNamed(context, '/registerThird');
                })
          ],
        ));
  }
}
