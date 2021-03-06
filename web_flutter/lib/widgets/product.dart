import 'package:flutter/material.dart';
import 'package:web_flutter/pages.dart/product_info.dart';

class Product extends StatefulWidget {
  final String imageAssets;
  Product({this.imageAssets});

  @override
  State<StatefulWidget> createState() {
    return _Product();
  }
}

class _Product extends State<Product> {
  final textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final textStyle1 = TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductInfo(),
            ));
      },
      child: Container(
        color: Colors.black12,
        width: 290,
        height: 290,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Center(
                child: Image.asset(widget.imageAssets),
              ),
            ),
            Container(
              color: Colors.black12,
              height: 90,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 20,
                        ),
                        Text(
                          "Name",
                          style: textStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 45,
                        ),
                        Text(
                          "0.0",
                          style: textStyle1,
                        ),
                        Text(
                          "\$",
                          style: textStyle,
                        ),
                        Container(
                          width: 110,
                        ),
                        Text(
                          " 4.5",
                          style: textStyle1,
                        ),
                        Text(
                          "\/5",
                          style: textStyle1,
                        ),
                        IconButton(
                            icon: Icon(
                          Icons.star,
                          color: Colors.black,
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
