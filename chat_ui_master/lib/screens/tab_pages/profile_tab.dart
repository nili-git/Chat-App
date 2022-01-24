import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTopProfile(),
        _buildMenuItem("Email Address", "giriramesh120@gmail.com", "emailPage"),
        Divider(),
        _buildMenuItem("Telephone", "9843215838", "phonePage"),
        Divider(),
        _buildNotification(),

        _buildMenuItem("Settings", "", "emailPage"),
        Divider(),
        _buildMenuItem("Feedback", "", "emailPage"),
        Divider(),
        _buildMenuItem("Get help", "", "emailPage"),
        Divider(),
        Container(
            margin: EdgeInsets.all(16.0),
            child: Text(
              "Delete account",
              style: TextStyle(color: Colors.red, fontSize: 18.0),
            )),
      ],
    );
  }

  Widget _buildTopProfile() {
    return Container(
      height: 200.0,
      color: Colors.red,
      child: Center(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 50,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Ramesh Giri",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            Text(
              "girirameesh120@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, String desc, String route) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      margin: EdgeInsets.only(bottom: 16.0),
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title),
          Row(
            children: <Widget>[
              Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.chevron_right,
                size: 20.0,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNotification() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      margin: EdgeInsets.only(bottom: 16.0),
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Notification"),
          Switch(value: false, onChanged: (bool value) {}, activeColor: Colors.red),
        ],
      ),
    );
  }
}
