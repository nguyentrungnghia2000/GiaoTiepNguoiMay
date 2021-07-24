import 'package:flutter/material.dart';

class InfoOfProduct extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfoOfProduct();
  }
}

class _InfoOfProduct extends State<InfoOfProduct> {
  int varOfProd = 0;
  int numbers = 0;

  void btnPlus() {
    setState(() {
      varOfProd = varOfProd + 1;
    });
  }

  void btnMinus() {
    if (varOfProd < 1) {
      varOfProd = 1;
    }
    setState(() {
      varOfProd = varOfProd - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final nameStyle = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    final infoStyle = TextStyle(
      fontSize: 24,
      color: Colors.black,
    );
    final priceStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(6, 130, 130, 1),
    );
    final rateStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(41, 169, 225, 1),
    );
    return Center(
      child: Container(
        width: screenWidth * 0.7,
        height: 950,
        child: Column(
          children: <Widget>[
            Container(
              width: screenWidth * 0.68,
              height: 500,
              child: Row(
                children: <Widget>[
                  Container(
                    color: Colors.black12,
                    width: screenWidth * 0.34,
                    height: 500,
                    child: Center(child: Image.asset('assets/chairsoborg.png')),
                  ),
                  Container(
                    width: screenWidth * 0.34,
                    height: 500,
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 30,
                                ),
                                Flexible(
                                  child: Text(
                                    "Chair with no image and very beautiful in wood color",
                                    style: nameStyle,
                                    overflow: TextOverflow.fade,
                                  ),
                                )
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 110,
                              ),
                              Container(
                                width: screenWidth * 0.2,
                              ),
                              Text("0.0", style: priceStyle),
                              Text(
                                "\$",
                                style: priceStyle,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 95,
                              ),
                              Container(
                                width: screenWidth * 0.2,
                              ),
                              Text(
                                "4.5",
                                style: rateStyle,
                              ),
                              Text(
                                "\/5",
                                style: rateStyle,
                              ),
                              IconButton(
                                  icon: Icon(
                                Icons.star,
                                color: Color.fromRGBO(41, 169, 225, 1),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 30,
                              ),
                              Text(
                                "Color: ",
                                style: infoStyle,
                              ),
                              Container(
                                width: 50,
                              ),
                              FlatButton(
                                onPressed: () {},
                                minWidth: 50,
                                height: 50,
                                color: Colors.black,
                              ),
                              Container(
                                width: 30,
                              ),
                              FlatButton(
                                onPressed: () {},
                                minWidth: 50,
                                height: 50,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 30,
                              ),
                              Text(
                                "Variable: ",
                                style: infoStyle,
                              ),
                              Container(
                                width: 30,
                              ),
                              IconButton(
                                  onPressed: () {
                                    btnMinus();
                                    if (varOfProd < 1) {
                                      final snackBar = SnackBar(
                                          content: Text(
                                              'The number of product can\'t be smaller'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    }
                                  },
                                  icon: Icon(Icons.exposure_minus_1)),
                              Container(
                                width: 30,
                              ),
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Color.fromRGBO(6, 130, 130, 1),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${varOfProd}',
                                      style: infoStyle,
                                    ),
                                  )),
                              Container(
                                width: 30,
                              ),
                              IconButton(
                                  onPressed: () {
                                    btnPlus();
                                  },
                                  icon: Icon(Icons.plus_one)),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                        ),
                        Container(
                          height: 3,
                          color: Colors.black,
                        ),
                        Container(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(6, 130, 130, 1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color.fromRGBO(6, 130, 130, 1),
                            ),
                          ),
                          child: FlatButton(
                            minWidth: double.infinity,
                            height: 50,
                            onPressed: () {
                              if (varOfProd == 0) {
                                final snackBar = SnackBar(
                                    content:
                                        Text('Variable of product invalid'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            },
                            child: Text(
                              "Add to card",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
            ),
            Container(
              width: screenWidth * 0.7,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                        ),
                        Text(
                          "Product detail",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(6, 130, 130, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    height: 5,
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                      width: screenWidth * 0.65,
                      height: 320,
                      color: Colors.black12,
                      child: Center(
                        child: Text("Write your details overhere"),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
