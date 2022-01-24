import 'package:flutter/material.dart';

class ContactsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildSearchBar(),

        //Online title
        Container(
          padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
          height: 25.0,
          color: Colors.grey[200],
          child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Online(", style: TextStyle(color: Colors.grey)),
                  TextSpan(text: "5", style: TextStyle(color: Colors.red)),
                  TextSpan(text: ")", style: TextStyle(color: Colors.grey)),
                ]
              ),
          ),
        ),

        _buildContactTile("Ramesh Giri", true),
        Divider(),
        _buildContactTile("Ramesh Giri", true),
        Divider(),
        _buildContactTile("Ramesh Giri", true),
        Divider(),
        _buildContactTile("Ramesh Giri", true),

        //add online list above here


        Container(
          padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
          height: 25.0,
          color: Colors.grey[200],
          child: RichText(
            text: TextSpan(
                children: [
                  TextSpan(text: "Others", style: TextStyle(color: Colors.grey)),
                ]
            ),
          ),
        ),

        _buildContactTile("Ramesh Giri", false),
        Divider(),
        _buildContactTile("Ramesh Giri", false),
        Divider(),
        _buildContactTile("Ramesh Giri", true),

      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 60.0,
      color: Colors.grey[300],
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 32.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search friends",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[300],
                )),
          ),
        ),
      ),
    );
  }

  Widget _buildContactTile(String name, bool status) {
    return ListTile(
      onTap: () {},
      leading: Stack(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            radius: 20.0,
          ),
          Positioned(
            bottom: 4.0,
            right: 6.0,
            child: CircleAvatar(
              backgroundColor: status == true ? Colors.red : Colors.transparent,
              radius: 4.0,
            ),
          )
        ],
      ),
      title: Text(name),
      trailing: Container(
        width: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info_outline,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
