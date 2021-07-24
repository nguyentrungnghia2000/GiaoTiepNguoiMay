import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:web_flutter/pages.dart/cart.dart';
import 'package:web_flutter/widgets/search_bar_widget.dart';
import 'package:web_flutter/widgets/profile_dropdownbutton.dart';
import 'package:web_flutter/widgets/categories_bar.dart';
import 'package:web_flutter/widgets/hot_research.dart';
import 'package:web_flutter/widgets/ending_page.dart';
import 'package:web_flutter/widgets/advertise.dart';

class MyPurchase extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyPurchase> {
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
                  buildHotResearch(),
                  Container(
                    height: 20,
                  ),
                  buildAdvertise(),
                  Container(
                    height: 20,
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
