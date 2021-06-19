import 'package:flutter/material.dart';
import 'package:web_flutter/pages.dart/my_purchase.dart';

class CategoriesBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _CategoriesBar();
  }
}

class _CategoriesBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final categoryStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(6, 130, 130, 1),
    );
    return Center(
        child: Container(
      width: screenWidth * 0.7,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      child: Row(
        children: <Widget>[
          Container(
              width: screenWidth * 0.08,
              child: Center(
                child: FlatButton(
                    height: 50,
                    minWidth: screenWidth * 0.06,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyPurchase(),
                          ));
                    },
                    child: Text(
                      "All",
                      style: categoryStyle,
                    )),
              )),
          Container(
              width: screenWidth * 0.08,
              child: Center(
                child: FlatButton(
                    height: 50,
                    minWidth: screenWidth * 0.06,
                    onPressed: () {},
                    child: Text(
                      "Chair",
                      style: categoryStyle,
                    )),
              )),
          Container(
              width: screenWidth * 0.08,
              child: Center(
                child: FlatButton(
                    height: 50,
                    minWidth: screenWidth * 0.06,
                    onPressed: () {},
                    child: Text(
                      "Bed",
                      style: categoryStyle,
                    )),
              )),
          Container(
              width: screenWidth * 0.08,
              child: Center(
                child: FlatButton(
                    height: 50,
                    minWidth: screenWidth * 0.06,
                    onPressed: () {},
                    child: Text(
                      "Table",
                      style: categoryStyle,
                    )),
              )),
          Container(
              width: screenWidth * 0.08,
              child: Center(
                child: FlatButton(
                    height: 50,
                    minWidth: screenWidth * 0.06,
                    onPressed: () {},
                    child: Text(
                      "Desk",
                      style: categoryStyle,
                    )),
              )),
          Container(
              width: screenWidth * 0.08,
              child: Center(
                child: FlatButton(
                    height: 50,
                    minWidth: screenWidth * 0.06,
                    onPressed: () {},
                    child: Text(
                      "Sofa",
                      style: categoryStyle,
                    )),
              )),
          Container(
              width: screenWidth * 0.08,
              child: Center(
                child: FlatButton(
                    height: 50,
                    minWidth: screenWidth * 0.06,
                    onPressed: () {},
                    child: Text(
                      "Bán chạy",
                      style: categoryStyle,
                    )),
              )),
          Container(
              width: screenWidth * 0.08,
              child: Center(
                child: FlatButton(
                    height: 50,
                    minWidth: screenWidth * 0.06,
                    onPressed: () {},
                    child: Text(
                      "Khuyến mãi",
                      style: categoryStyle,
                    )),
              )),
        ],
      ),
    ));
  }
}
