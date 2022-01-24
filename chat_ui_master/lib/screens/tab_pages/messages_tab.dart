import 'package:chat_ui_master/screens/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessagesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          _buildMessageTile("Ramesh Giri", "Hello brother", "01:10 PM", true, context),
          _buildMessageTile("Ramesh Giri", "Hello brother", "01:10 PM", false, context),
          _buildMessageTile("Ramesh Giri", "Hello brother", "01:10 PM", true, context),
          _buildMessageTile("Ramesh Giri", "Hello brother", "01:10 PM", false, context),
        ],

    );
  }

  Widget _buildMessageTile(String name, String message, String time ,bool status, BuildContext context) {
    return Slidable(
      delegate: new SlidableDrawerDelegate(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => ChatPage(name)));
          },
          leading: Stack(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 30.0,
              ),

              Positioned(
                bottom: 4.0,
                right: 6.0,
                child: CircleAvatar(
                  backgroundColor: status == true ? Colors.red : Colors.transparent ,
                  radius: 4.0,
                ),
              )
            ],
          ),
          title: Text(name),
          subtitle: Text(
            message,
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Text(
            time,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'More',
          color: Colors.grey[300],
          icon: Icons.more_horiz,
          onTap: () {},
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {},
        ),
      ],
    );
  }
}
