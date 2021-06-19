import 'package:flutter/material.dart';
import 'package:web_flutter/pages.dart/my_purchase.dart';
import 'package:web_flutter/pages.dart/product_info.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPurchase(),
    );
  }
}
