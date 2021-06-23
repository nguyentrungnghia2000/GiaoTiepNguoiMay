import 'package:flutter/material.dart';

class ShowInfor extends StatefulWidget {
  //const ShowInfor({ Key? key }) : super(key: key);

  @override
  _ShowInforState createState() => _ShowInforState();
}

class _ShowInforState extends State<ShowInfor> {
  final hotResearchStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color.fromRGBO(6, 130, 130, 1),
  );
  final regular = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "ID",
              style: hotResearchStyle,
            ),
            Text(
              "Day Order",
              style: regular,
            ),
            Text(
              "Name Product",
              style: regular,
            ),
            Text(
              "Total Price",
              style: regular,
            ),
            Text(
              "Status",
              style: regular,
            ),
          ],
        )),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
