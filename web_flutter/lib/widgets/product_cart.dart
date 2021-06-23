import 'package:flutter/material.dart';
import 'package:web_flutter/pages.dart/product_info.dart';

class ProductCart extends StatefulWidget {
  //const ProductCart({ Key? key }) : super(key: key);

  @override
  _ProductCartState createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  final textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final textStyle4 = TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
  final textStyle2 = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
  final textStyle3 = TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  final textStyle1 = TextStyle(fontSize: 20);
  int numberOfOrder = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductInfo()));
      },
      child: Container(
        margin: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Color.fromRGBO(6, 130, 130, 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(12),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.grey,
                  ),
                  child: Center(child: Text("Image Assets")),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 24),
                      child: Text(
                        "Name",
                        style: textStyle,
                      ),
                    ),
                    Text(
                      "Price",
                      style: textStyle2,
                    ),
                    Row(
                      children: [
                        Text(
                          "4.5/5",
                          style: textStyle3,
                        ),
                        IconButton(
                            icon: Icon(
                          Icons.star,
                          color: Colors.black,
                        ))
                      ],
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (numberOfOrder == 1) {
                                showDialog(
                                    context: context,
                                    builder: (_) => new AlertDialog(
                                          title: new Text("Cart Message"),
                                          content: new Text(
                                              "Cannot delete selected products from merchandise"),
                                          actions: <Widget>[
                                            FlatButton(
                                              child: Text('Close'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            )
                                          ],
                                        ));
                              } else if (numberOfOrder > 1) {
                                setState(() {
                                  numberOfOrder--;
                                });
                              }
                            },
                            child: Text(
                              "-",
                              style: textStyle4,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(12),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                    color: Color.fromRGBO(6, 130, 130, 1))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Center(
                                child: Text(
                                  "${numberOfOrder}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Color.fromRGBO(6, 130, 130, 1)),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  numberOfOrder++;
                                });
                              },
                              child: Text("+", style: textStyle4))
                        ],
                      ),
                      Text(
                        "Total Price",
                        style: textStyle,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
