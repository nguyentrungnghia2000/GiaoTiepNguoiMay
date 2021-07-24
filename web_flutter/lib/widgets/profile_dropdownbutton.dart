import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:web_flutter/pages.dart/categories_page.dart';

class ProfileDropDownButton extends StatefulWidget {
  String dropdownValue;

  ProfileDropDownButton({this.dropdownValue});
  @override
  State<StatefulWidget> createState() {
    return _ProfileDropDownButton();
  }
}

class _ProfileDropDownButton extends State<ProfileDropDownButton> {
  final controler = TextEditingController();
  final styleDecoration = Colors.white;
  final styleBorder = Colors.black26;
  final dropDownStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTap: () {
          final snackBar = SnackBar(content: Text('Tap to drop down button'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CategoriesPage()));
        },
        child: Container(
            width: screenWidth * 0.1,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(color: Colors.black26),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 5,
                ),
                Container(
                  color: Colors.black12,
                  width: screenWidth * 0.042,
                  height: 50,
                  child: Center(
                    child: Image.asset('assets/user.png'),
                  ),
                ),
                Container(
                  width: 10,
                ),
                FlatButton(
                    minWidth: screenWidth * 0.04,
                    height: 30,
                    child: Center(
                      child: Text(
                        widget.dropdownValue,
                        style: dropDownStyle,
                      ),
                    )),
              ],
            )));
  }
}
