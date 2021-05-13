import 'package:flutter/material.dart';
import 'package:recycle_app/Screens/LandingScreen.dart';
import 'package:recycle_app/Screens/SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController;
  TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      width: 20.0,
                    ),
                  ),
                  FlatButton(
                    splashColor: Color(0xff006462),
                    color: Color(0xff006462),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, SignupScreen.id);
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              SizedBox(
                height: 150.0,
              ),
              _text('Email or phone'),
              SizedBox(
                height: 16.0,
              ),
              _text('Pass word'),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: RaisedButton(
                  elevation: 3.0,
                  splashColor: Color(0xff006462),
                  color: Color(0xff006462),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  onPressed: () async {
                    Navigator.pushReplacementNamed(context, LandingScreen.id);
                  },
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 10.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 300.0,
                    child: Image.asset(
                      'assets/img/4.png',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _text(String label) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: 35.0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
          strutStyle: StrutStyle.disabled,
          obscureText: label.toLowerCase() == 'password' ? true : false,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                50.0,
              ),
            ),
            counterStyle: TextStyle(
              color: Colors.white70,
            ),
            focusColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                50.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
