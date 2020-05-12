import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movee/constants.dart';
import 'searched_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 300),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey[300]),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/logo.svg',
                      width: 150,
                    ),
                    Image.asset(
                      'assets/images/user.png',
                      scale: 2.5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, bottom: 40),
                child: Text(
                  'Find your travel:',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Compare trasports'),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          color: kPrimaryColor,
                          height: 2,
                          width: 130,
                        ),
                      ],
                    ),
                    Text('Best price'),
                    Text('Fasted way')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        primary: false,
        padding: EdgeInsets.all(30),
        children: <Widget>[
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              children: <Widget>[
                buildInnerTexts(topText: 'START POINT', bottomText: 'Poznań'),
                SizedBox(width: 63),
                ColoredBox(
                  color: Colors.grey,
                  child: SizedBox(
                    height: 50,
                    width: 0.5,
                  ),
                ),
                buildInnerTexts(topText: 'DESTINATION', bottomText: 'Wroclaw'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildFlexible(top: 'DATE', bottom: '01 Jan 2019'),
              SizedBox(width: 10),
              buildFlexible(top: 'TIME', bottom: '06:00 - 07:00'),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildTrasport('assets/icons/airplane.svg', 'Airplane'),
              buildTrasport('assets/icons/train.svg', 'Train'),
              buildTrasport('assets/icons/city_bus.svg', 'City bus'),
              buildTrasport('assets/icons/car_icon.svg', 'Shared car'),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 60,
            child: RaisedButton(
              elevation: 0,
              highlightElevation: 3,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SearchedPage(),
                ));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Search trasport',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        color: Colors.white,
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            buildBottomIcon(
              icon: Icon(Icons.search, color: kPrimaryColor),
              text: 'Search',
            ),
            buildBottomIcon(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.grey,
              ),
              text: 'Notifications',
              notifications: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: buildBottomIcon(
                icon: Image.asset('assets/icons/travels.png', scale: 3),
                text: 'Travels',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildBottomIcon({String text, Widget icon, int notifications}) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              width: 28,
              child: Stack(
                children: <Widget>[
                  notifications != null
                      ? Positioned(
                          right: 0,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                            ),
                            child: Center(
                              child: Text(
                                notifications.toString(),
                                style: TextStyle(
                                  fontSize: 6,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                  icon,
                ],
              ),
            ),
            Text(text, style: TextStyle(fontSize: 12)),
          ],
        ),
      ],
    );
  }

  Widget buildTrasport(String path, String text) {
    return Container(
      height: 120,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: kPrimaryColor,
                    size: 15,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 32,
              height: 40,
              child: SvgPicture.asset(
                path,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              text,
              style: TextStyle(fontSize: 11, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Flexible buildFlexible({String top, String bottom}) {
    return Flexible(
      flex: 1,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                top,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 10),
              Text(
                bottom,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildInnerTexts({String topText, String bottomText}) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 43,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              topText,
              style: TextStyle(fontSize: 12),
            ),
            Text(
              bottomText,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
