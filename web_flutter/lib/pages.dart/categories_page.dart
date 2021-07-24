import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:web_flutter/pages.dart/cart.dart';
import 'package:web_flutter/widgets/advertise.dart';
import 'package:web_flutter/widgets/categories_bar.dart';
import 'package:web_flutter/widgets/ending_page.dart';
import 'package:web_flutter/widgets/hot_research.dart';
import 'package:web_flutter/widgets/profile_dropdownbutton.dart';
import 'package:web_flutter/widgets/search_bar_widget.dart';
import 'package:web_flutter/widgets/showInfor.dart';

import 'my_purchase.dart';

class CategoriesPage extends StatefulWidget {
  //const CategoriesPage({ Key? key }) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int buttonPress = 1;
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
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              width: screenWidth,
              height: screenHeight * 0.87,
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 320,
                              height: MediaQuery.of(context).size.height,
                              margin: const EdgeInsets.only(left: 230),
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
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        buttonPress = 0;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.supervisor_account_rounded,
                                            size: 38,
                                            color: buttonPress == 0
                                                ? Color.fromRGBO(6, 130, 130, 1)
                                                : Colors.black,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6),
                                          child: Text(
                                            "User",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: buttonPress == 0
                                                  ? Color.fromRGBO(
                                                      6, 130, 130, 1)
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        buttonPress = 1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.shopping_cart_rounded,
                                            size: 38,
                                            color: buttonPress == 1
                                                ? Color.fromRGBO(6, 130, 130, 1)
                                                : Colors.black,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6),
                                          child: Text(
                                            "My purcharse",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: buttonPress == 1
                                                    ? Color.fromRGBO(
                                                        6, 130, 130, 1)
                                                    : Colors.black,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        buttonPress = 2;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.notifications_rounded,
                                            color: buttonPress == 2
                                                ? Color.fromRGBO(6, 130, 130, 1)
                                                : Colors.black,
                                            size: 38,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6),
                                          child: Text(
                                            "Notification",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: buttonPress == 2
                                                    ? Color.fromRGBO(
                                                        6, 130, 130, 1)
                                                    : Colors.black,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        buttonPress = 3;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.payments_rounded,
                                            color: buttonPress == 3
                                                ? Color.fromRGBO(6, 130, 130, 1)
                                                : Colors.black,
                                            size: 38,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6),
                                          child: Text(
                                            "Payment Method",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: buttonPress == 3
                                                    ? Color.fromRGBO(
                                                        6, 130, 130, 1)
                                                    : Colors.black,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        buttonPress = 4;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.add_location_alt_rounded,
                                            color: buttonPress == 4
                                                ? Color.fromRGBO(6, 130, 130, 1)
                                                : Colors.black,
                                            size: 38,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6),
                                          child: Text(
                                            "My Address",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: buttonPress == 4
                                                    ? Color.fromRGBO(
                                                        6, 130, 130, 1)
                                                    : Colors.black,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        buttonPress = 5;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.favorite,
                                            color: buttonPress == 5
                                                ? Color.fromRGBO(6, 130, 130, 1)
                                                : Colors.black,
                                            size: 38,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6),
                                          child: Text(
                                            "Favorite Product",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: buttonPress == 5
                                                    ? Color.fromRGBO(
                                                        6, 130, 130, 1)
                                                    : Colors.black,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Container(
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
                                    "My purchase",
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
                                      SizedBox(
                                        height: 24,
                                      ),
                                      ShowInfor(),
                                      ShowInfor(),
                                      ShowInfor(),
                                      ShowInfor(),
                                      ShowInfor(),
                                      ShowInfor(),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
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
