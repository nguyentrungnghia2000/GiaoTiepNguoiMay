import 'package:flutter/material.dart';
import 'package:web_flutter/widgets/product.dart';

class HotResearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _HotResearch();
  }
}

class _HotResearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final hotResearchStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(6, 130, 130, 1),
    );
    return SingleChildScrollView(
      child: Center(
          child: Container(
        width: screenWidth * 0.7,
        height: screenHeight,
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
                    "Hot research",
                    style: hotResearchStyle,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              height: 5,
            ),
            Container(
              height: 20,
            ),
            Container(
              child: Center(
                child: Container(
                  width: screenWidth * 0.65,
                  height: screenHeight - 125,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 400,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 15,
                            ),
                            buildProduct(),
                            Container(
                              width: 4,
                            ),
                            buildProduct(),
                            Container(
                              width: 4,
                            ),
                            buildProduct(),
                            Container(
                              width: 4,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 15,
                            ),
                            buildProduct(),
                            Container(
                              width: 4,
                            ),
                            buildProduct(),
                            Container(
                              width: 4,
                            ),
                            buildProduct(),
                            Container(
                              width: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                  color: Color.fromRGBO(6, 130, 130, 1),
                  onPressed: () {},
                  child: Text("More",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ))),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildProduct() => Product();
}
