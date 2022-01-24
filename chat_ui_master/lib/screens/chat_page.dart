import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static final String route = "chat-page";

  final String name;

  ChatPage(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.red, //change your color here
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            name,
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.info_outline,
                color: Colors.red,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    _redChat(context, "Hello Guys", "12.00 PM"),
                    _whiteChat(context, "Hello Guys", "12.00 PM"),
                    _redChat(context, "Hello Guys", "12.00 PM"),
                    _whiteChat(context, "Hello Guys", "12.00 PM"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      height: 45,
                      width: MediaQuery.of(context).size.width - 140,
                      color: Colors.grey[100],
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Your message...",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 14.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      color: Colors.red,
                      height: 45,
                      width: 60,
                      child: Center(
                          child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ))),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _redChat(BuildContext context, String message, String time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: <Widget>[
        SizedBox(width: 5),
        CircleAvatar(
          backgroundColor: Colors.grey[300],
          radius: 15,
        ),
        SizedBox(width: 10),

        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.red,
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 2),
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          child: Text(
            message,
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ),
        Text(
          time,
          style: TextStyle(color: Colors.grey, fontSize: 12.0),
        ),
      ],
    );
  }

  Widget _whiteChat(BuildContext context, String message, String time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 2),
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
          ),
          child: Text(
            message,
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
        ),
        Text(
          time,
          style: TextStyle(color: Colors.grey, fontSize: 12.0),
        ),
      ],
    );
  }
}
