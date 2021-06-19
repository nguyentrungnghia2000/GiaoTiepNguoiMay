import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:web_flutter/widgets/search_bar_widget.dart';
import 'package:web_flutter/widgets/profile_dropdownbutton.dart';
import 'package:web_flutter/widgets/categories_bar.dart';
import 'package:web_flutter/widgets/hot_research.dart';
import 'package:web_flutter/widgets/ending_page.dart';
import 'package:web_flutter/widgets/advertise.dart';
import 'package:web_flutter/widgets/info_of_product.dart';
import 'package:web_flutter/pages.dart/my_purchase.dart';

class ProductInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductInfo();
  }
}

class _ProductInfo extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    ScreenScaler scaler = new ScreenScaler()..init(context);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(6, 130, 130, 1),
              height: 110,
              child: Row(
                children: <Widget>[
                  Container(
                    width: screenWidth * 0.15,
                    height: 110,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyPurchase(),
                            ));
                      },
                      child: Container(
                          color: Colors.black12,
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
                      onPressed: () {},
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
                  //add here
                  buildInfoProduct(),
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

  Widget buildInfoProduct() => InfoOfProduct();
}
