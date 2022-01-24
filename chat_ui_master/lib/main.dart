import 'package:chat_ui_master/screens/home_page.dart';
import 'package:chat_ui_master/screens/login_page.dart';
import 'package:flutter/material.dart';
 //import 'package:chat_ui_master/main.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.route: (BuildContext context) => LoginPage(),
    HomePage.route: (BuildContext context) => HomePage(),

  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent,
      ),
      routes: routes,
      home: LoginPage(),
    );
  }
}