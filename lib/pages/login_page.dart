import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    Orientation _orientation = MediaQuery.of(context).orientation; 
    return Material(
      child: ListView(
        primary: false,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                bottom: 15,
                left:_orientation == Orientation.landscape? _width * 0.68: _width*0.34,
                child: SizedBox(
                  height: 400,
                  child: Image.asset(
                    'assets/images/image_custom.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: SizedBox(
                  width: 150,
                  height: 300,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset('assets/images/logo.svg'),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: RichText(
              text: TextSpan(
                text: 'Compare,\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'MontSerrat',
                ),
                children: [
                  TextSpan(
                    text: 'Travel, Save money.',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          buildTextField('E-mail address'),
          buildTextField('Password'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: 60,
              child: RaisedButton(
                onPressed: () {},
                elevation: 0,
                highlightElevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Text(
                  'Login me',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: 'Don\'t have account? ',
                style: TextStyle(color: Colors.grey, fontSize: 17),
                children: [
                  TextSpan(
                    text: 'Create it!',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildTextField(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: text,
        ),
      ),
    );
  }
}
