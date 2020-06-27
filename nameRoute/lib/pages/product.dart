import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("上一頁"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        appBar: AppBar(
          title: Text("I am a product page"),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              leading: Image.network(
                  "https://scontent.fkhh1-1.fna.fbcdn.net/v/t1.0-9/74848865_2437800872940714_5065245255058587648_o.jpg?_nc_cat=106&_nc_sid=dd9801&_nc_ohc=6Uk_Z-9xANcAX8qor6Z&_nc_ht=scontent.fkhh1-1.fna&oh=75724c83466e47c96bd5887b8c8c5ae7&oe=5F155D9B"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/productInfo', arguments: {
                  //寫入要傳送的參數 Write the map Type on arguments
                  "name": 'Product1',
                  "Quantity" : 10,
                  "Image" : Image.network("https://scontent.fkhh1-1.fna.fbcdn.net/v/t1.0-9/74848865_2437800872940714_5065245255058587648_o.jpg?_nc_cat=106&_nc_sid=dd9801&_nc_ohc=6Uk_Z-9xANcAX8qor6Z&_nc_ht=scontent.fkhh1-1.fna&oh=75724c83466e47c96bd5887b8c8c5ae7&oe=5F155D9B")
                }); //命名路由寫法
              },
              child: Text("go to ProductInformation"),
            ),
          ],
        ),
      ),
    );
  }
}
