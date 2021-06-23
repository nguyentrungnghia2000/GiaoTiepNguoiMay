import 'package:flutter/material.dart';

class EndingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _EndingPage();
  }
}

class _EndingPage extends StatelessWidget {
  final textStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22);
  final textStyle1 = TextStyle(color: Colors.white, fontSize: 22);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: screenWidth,
        height: 410,
        color: Color.fromRGBO(6, 130, 130, 1),
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: screenWidth * 0.2,
                    height: 300,
                  ),
                  Container(
                    width: screenWidth * 0.15,
                    height: 300,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Contact Info",
                          style: textStyle,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                Icons.phone,
                                color: Colors.white,
                              )),
                              Text(
                                " 0903111222",
                                style: textStyle1,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                Icons.sms,
                                color: Colors.white,
                              )),
                              Text(
                                "ntn@gmail.com",
                                style: textStyle1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.35,
                    height: 300,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Address",
                          style: textStyle,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                Icons.star,
                                color: Colors.white,
                              )),
                              Text(
                                " 84 St.Dang Van Chau, Cong Hoa, P10",
                                style: textStyle1,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                Icons.star,
                                color: Colors.white,
                              )),
                              Text(
                                " 84 St.Dang Van Chau, Cong Hoa, P12, Dis.3",
                                style: textStyle1,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                Icons.star,
                                color: Colors.white,
                              )),
                              Text(
                                " 84 St.3/2, Dis.10",
                                style: textStyle1,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                Icons.star,
                                color: Colors.white,
                              )),
                              Text(
                                " 84 St.Linh Xuan, Dis.Thu Duc",
                                style: textStyle1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: screenWidth * 0.2,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                            color: Colors.black12,
                            width: screenWidth * 0.18,
                            height: 200,
                            child: Center(
                              child: Text("Logo"),
                            )),
                        Container(
                            child: Row(
                          children: <Widget>[
                            Container(
                              width: 100,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                )),
                            Container(
                              width: 30,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                )),
                            Container(
                              width: 30,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.youtube_searched_for,
                                  color: Colors.white,
                                )),
                          ],
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 3,
              width: screenWidth,
              color: Colors.white,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 50,
              width: screenWidth,
              child: Center(
                child: Text(
                  "Copy right © 2021 DECOHOME. All right Reversed",
                  style: textStyle1,
                ),
              ),
            ),
          ],
        ));
  }
}
