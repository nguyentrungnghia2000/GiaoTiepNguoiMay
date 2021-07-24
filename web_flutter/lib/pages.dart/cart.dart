import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:web_flutter/pages.dart/categories_page.dart';
import 'package:web_flutter/pages.dart/my_purchase.dart';
import 'package:web_flutter/widgets/advertise.dart';
import 'package:web_flutter/widgets/categories_bar.dart';
import 'package:web_flutter/widgets/ending_page.dart';
import 'package:web_flutter/widgets/hot_research.dart';
import 'package:web_flutter/widgets/info_of_product.dart';
import 'package:web_flutter/widgets/product_cart.dart';
import 'package:web_flutter/widgets/profile_dropdownbutton.dart';
import 'package:web_flutter/widgets/search_bar_widget.dart';

class Cart extends StatefulWidget {
  //const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final hotResearchStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color.fromRGBO(6, 130, 130, 1),
  );
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    ScreenScaler scaler = new ScreenScaler()..init(context);
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(6, 130, 130, 1),
              height: 100,
              child: Row(
                children: <Widget>[
                  Container(
                    width: screenWidth * 0.15,
                    height: 110,
                  ),
                  GestureDetector(
                      onTap: () {
                        final snackBar = SnackBar(
                            content: Text('You have been tap to the logo'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyPurchase(),
                            ));
                      },
                      child: Container(
                          width: screenWidth * 0.105,
                          height: 110,
                          child: Center(
                            child: Text(
                              "Logo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                              ),
                            ),
                          ))),
                  Container(
                    width: screenWidth * 0.05,
                    height: 110,
                  ),
                  buildSearch(),
                  Container(
                    width: screenWidth * 0.02,
                    height: 110,
                  ),
                  buildProfileDropDown(),
                  Container(
                    width: screenWidth * 0.03,
                    height: 110,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(6, 130, 130, 1),
                      border: Border.all(
                        color: Color.fromRGBO(6, 130, 130, 1),
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.shopping_bag),
                      iconSize: 42,
                      color: Colors.white,
                      onPressed: () {
                        final snackBar = SnackBar(
                            content: Text('You have been tap to the Cart'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cart()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              width: screenWidth,
              height: screenHeight * 0.878,
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 20,
                  ),
                  buildCategoriesBar(),
                  Container(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 230),
                            width: 730,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.black26)),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: const EdgeInsets.all(12),
                                    child: Text(
                                      "Cart",
                                      style: hotResearchStyle,
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 5,
                                  color: Colors.grey,
                                ),
                                Container(
                                  height: 615,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ProductCart(),
                                        ProductCart(),
                                        ProductCart(),
                                        ProductCart(),
                                        ProductCart(),
                                        ProductCart(),
                                        ProductCart(),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 320,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(
                                        "Your Address:",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(
                                        "Your Name: | Phone Number:",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(
                                        "Your Address:",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 36,
                              ),
                              Container(
                                width: 320,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(
                                        "Total Price",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(
                                        "Price",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(
                                        "Disscount",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Divider(
                                      thickness: 3,
                                      color: Colors.grey,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          child: Text(
                                            "Total Price:",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12, right: 12),
                                          child: Text(
                                            "Total Price",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => new AlertDialog(
                                            title: new Text("Order Message"),
                                            content: new Text("Order Success"),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text('OK'),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              )
                                            ],
                                          ));
                                },
                                child: Container(
                                  width: 320,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(6, 130, 130, 1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Order",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  buildEndingPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget buildSearch() => SearchBar();

  Widget buildProfileDropDown() => ProfileDropDownButton(dropdownValue: 'User');

  Widget buildCategoriesBar() => CategoriesBar();

  Widget buildHotResearch() => HotResearch();

  Widget buildEndingPage() => EndingPage();

  Widget buildAdvertise() => Avertise();
}
