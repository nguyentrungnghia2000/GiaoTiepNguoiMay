import 'package:flutter/material.dart';
import 'package:web_flutter/widgets/product.dart';

class Avertise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Avertise();
  }
}

class _Avertise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final hotResearchStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(6, 130, 130, 1),
    );
    return Center(
        child: Container(
      width: screenWidth * 0.7,
      height: screenHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      child: SingleChildScrollView(
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
                    "Advertisement",
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
              height: 10,
            ),
            Container(
                width: screenWidth * 0.65,
                height: 600,
                color: Colors.black12,
                child: Center(
                  child: Image.asset('assets/advertising.jpg'),
                )),
          ],
        ),
      ),
    ));
  }

  // Widget buildProduct() => Product();
}
