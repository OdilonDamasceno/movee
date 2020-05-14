import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 30),
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
                    'Show transports',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 200,
            child: Image.asset(
              'assets/images/car.png',
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: RichText(
              text: TextSpan(
                text: 'Shared car: ',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'MonstSerrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: 'Mazda CX-5',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MonstSerrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            height: .1,
            width: MediaQuery.of(context).size.width,
            child: ColoredBox(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/user_female.png',
                        ),
                      ),
                      title: Text(
                        'Julia Bray',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        '28 years',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Image.asset('assets/images/blablacar_logo.png'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: .1,
            width: MediaQuery.of(context).size.width,
            child: ColoredBox(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor,
                      ),
                      width: 10,
                      height: 10,
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 1,
                      height: 50,
                      color: kPrimaryColor,
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor,
                      ),
                      width: 10,
                      height: 10,
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('Start point:'),
                        subtitle: Text('Poznań'),
                      ),
                      ListTile(
                        title: Text('Destination:'),
                        subtitle: Text('Wroclaw'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('Start time:'),
                        subtitle: Text('06:08'),
                      ),
                      ListTile(
                        title: Text('Finish time:'),
                        subtitle: Text('08:06'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: .1,
            width: MediaQuery.of(context).size.width,
            child: ColoredBox(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Trasport price:',
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: Text(
                      '\$10,50',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 200,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Book transport',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
