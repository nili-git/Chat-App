import 'package:flutter/material.dart';

class GroupsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildGroups(),
        _buildGroups(),
        _buildGroups(),
      ],
    );
  }

  Widget _buildGroups() {
    return Container(
          height: 130.0,
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          decoration: BoxDecoration(color: Colors.white.withOpacity(1), boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 10.0,
            )
          ]),
          child: InkWell(
            onTap: (){
            },
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Kathmandu City Police Department",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "5 minutes ago",
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        ),
                        SizedBox(width: 5.0),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 2.0,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          "4 members",
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 15.0,
                        ),
                        SizedBox(width: 5.0),
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 15.0,
                        ),
                        SizedBox(width: 5.0),
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 15.0,
                        ),
                        SizedBox(width: 5.0),
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 15.0,
                        ),
                      ],
                    )
                  ],
                ),

                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
                )
              ],
            ),
          ),

    );
  }
}
