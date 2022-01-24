import 'package:chat_ui_master/screens/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static final String route = "login-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.6, 0.7],
            colors: [
              Colors.red[400],
              Colors.red[600],
              Colors.red[700],
              Colors.red[800],
            ],
          ),
        ),
        child: ListView(

          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 32, vertical: 64),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Spidey Chat",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 44.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "catchy slogan goes here",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 150.0),
                    _buildEmailField(context),
                    SizedBox(height: 20.0),
                    _buildPasswordField(context),
                    SizedBox(height: 64.0),
                    _buildSignInButton(context),
                    SizedBox(height: 10.0),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(text: "Dont have an account? "),
                        TextSpan(
                            text: "Sign Up",
                            style:
                                TextStyle(decoration: TextDecoration.underline)),
                      ]),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black38, borderRadius: BorderRadius.circular(25.0)),
      child: Center(
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18.0),
          decoration: InputDecoration(
            hintText: "abc@abc.com",
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black38, borderRadius: BorderRadius.circular(25.0)),
      child: Center(
        child: TextField(
          obscureText: true,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18.0),
          decoration: InputDecoration(
            hintText: "**********",
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInButton(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 16.0),
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()));
      },
      color: Colors.white,
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      splashColor: Colors.blue,
      child: Text(
        "Sign In",
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
