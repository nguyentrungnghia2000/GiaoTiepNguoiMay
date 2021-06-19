import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

class SearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchBar();
  }
}

class _SearchBar extends State<SearchBar> {
  final controler = TextEditingController();
  final styleDecoration = Colors.white;
  final styleBorder = Colors.black26;
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = new ScreenScaler()..init(context);
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.3,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: styleDecoration,
        border: Border.all(color: styleBorder),
      ),
      child: Center(
          child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Color.fromRGBO(6, 130, 130, 1),
          ),
          FlatButton(
            child: Text(
              "Search",
              style: TextStyle(color: Colors.black26, fontSize: 18),
            ),
          ),
        ],
      )),
    );
  }
}
