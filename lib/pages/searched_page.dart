import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import 'details_page.dart';

class SearchedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 200),
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
                padding:
                    EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 30),
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
                padding: EdgeInsets.only(left: 18, bottom: 30),
                child: GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        color: kPrimaryColor,
                      ),
                      Text(
                        'Change criteria',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      color: kPrimaryColor,
                    ),
                    Text(
                      '06:00 - 07:00',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          buildRow(
            text: 'Shared car',
            logo: Image.asset('assets/images/bla_logo.png'),
            color: kLightBlueColor,
            price: '10,50',
            time: '1h55',
            left: 20,
            size: 260,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsPage(),
                ),
              );
            },
          ),
          buildRow(
            text: 'City bus',
            color: kLightGreenColor,
            logo: SizedBox(
              width: 50,
              height: 20,
              child: Image.asset(
                'assets/images/flix_logo.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            price: '13,50',
            time: '2h20',
            left: 50,
            size: 260,
          ),
          buildRow(
            text: 'Airplane',
            color: kDarkBlueColor,
            logo: SizedBox(
              height: 30,
              width: 50,
              child: Image.asset(
                'assets/images/rayan_logo.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            price: '110',
            time: '55',
            left: 70,
            size: 150,
          ),
          buildRow(
            text: 'Train',
            color: kDarkBlueLight,
            logo: SizedBox(
              height: 20,
              width: 50,
              child: Image.asset('assets/images/icc_logo.png'),
            ),
            price: '15',
            time: '2h05',
            left: 30,
            size: 200,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('06:00'),
                Text('06:30'),
                Text('07:00'),
                Text('07:30'),
                Text('08:00'),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.fromBorderSide(
            BorderSide(color: Colors.grey[300]),
          ),
        ),
        height: 62,
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

  Row buildRow(
      {String text,
      Widget logo,
      String time,
      Color color,
      String price,
      double left,
      double size,
      Function() onTap}) {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 121,
          decoration: BoxDecoration(
            border: Border.symmetric(
              vertical: BorderSide(color: Colors.grey[300]),
            ),
          ),
          child: Center(
            child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                width: 160,
                height: 120,
                color: Colors.grey[200],
              ),
              GridPaper(
                color: Colors.grey[300],
                divisions: 1,
                subdivisions: 1,
                interval: 20,
                child: Container(
                  height: 120,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: left),
                child: GestureDetector(
                  onTap: onTap,
                  child: Container(
                    height: 40,
                    width: size,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: color,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        logo,
                        Expanded(
                          child: Text(
                            '\$$price',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ClipPath(
                          clipper: _ClipPath(),
                          child: Container(
                            width: 70,
                            height: 260,
                            decoration: BoxDecoration(
                              color: Colors.transparent.withAlpha(50),
                            ),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Text(
                                  '$time\'',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width / 2, 0);

    path.lineTo(0, size.height);

    path.lineTo(size.width / 2, size.height);

    path.addRRect(
      RRect.fromLTRBAndCorners(
        size.width / 2,
        size.height,
        size.width,
        0,
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
