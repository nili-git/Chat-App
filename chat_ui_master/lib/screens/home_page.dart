import 'package:chat_ui_master/screens/tab_pages/contacts_tab.dart';
import 'package:chat_ui_master/screens/tab_pages/groups_tab.dart';
import 'package:chat_ui_master/screens/tab_pages/messages_tab.dart';
import 'package:chat_ui_master/screens/tab_pages/profile_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String route = "home-page";

  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _children = [];
  List<Widget> _appBars = [];

  bool selectedFirst = false;
  bool selectedSecond = false;
  bool selectedThird = false;
  bool selectedFourth = false;

  @override
  void initState() {
    super.initState();
    selectedFirst = true;

    _children.add(MessagesTab());
    _children.add(GroupsTab());
    _children.add(ContactsTab());
    _children.add(ProfileTab());

    _appBars.add(_buildAppBarMessage("Messages"));
    _appBars.add(_buildAppBarGroups("Groups"));
    _appBars.add(_buildAppBarContacts("Contacts"));
    _appBars.add(_buildAppBarProfile());
  }

  Widget _buildAppBarMessage(String title) {
    return AppBar(
      leading: InkWell(
          onTap: () {},
          child: Container(
            child: Center(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.red, fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ),
          )),
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),
      elevation: 0.4,
      automaticallyImplyLeading: false,
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.red,
          ),
        )
      ],
    );
  }

  Widget _buildAppBarContacts(String title) {
    return AppBar(
      leading: InkWell(
          onTap: () {},
          child: Container(
            child: Center(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.red, fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ),
          )),
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),
      elevation: 0.4,
      automaticallyImplyLeading: false,
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Colors.red,
          ),
        )
      ],
    );
  }

  Widget _buildAppBarGroups(String title) {
    return AppBar(
      leading: InkWell(
          onTap: () {},
          child: Container(
            child: Center(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.red, fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ),
          )),
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),
      elevation: 0.4,
      automaticallyImplyLeading: false,
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Colors.red,
          ),
        )
      ],
    );
  }

  Widget _buildAppBarProfile() {
    return AppBar(
      leading: InkWell(
          onTap: () {},
          child: Container(
            child: Center(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ),
          )),
      centerTitle: true,
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.power_settings_new,
            color: Colors.white,
          ),
        )
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars[_currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _children[_currentIndex],
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  color: selectedFirst == true ? Colors.red : Colors.grey,
                  icon: Icon(Icons.message),
                  onPressed: () {
                    _onTabTapped(0);
                    setState(() {
                      selectedFirst = true;
                      selectedSecond = false;
                      selectedThird = false;
                      selectedFourth = false;
                    });
                  },
                ),
                IconButton(
                  color: selectedSecond == true ? Colors.red : Colors.grey,
                  icon: Icon(Icons.group),
                  onPressed: () {
                    _onTabTapped(1);
                    setState(() {
                      selectedFirst = false;
                      selectedSecond = true;
                      selectedThird = false;
                      selectedFourth = false;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  color: selectedThird == true ? Colors.red : Colors.grey,
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    _onTabTapped(2);
                    setState(() {
                      selectedFirst = false;
                      selectedSecond = false;
                      selectedThird = true;
                      selectedFourth = false;
                    });
                  },
                ),
                IconButton(
                  color: selectedFourth == true ? Colors.red : Colors.grey,
                  icon: Icon(Icons.person),
                  onPressed: () {
                    _onTabTapped(3);
                    setState(() {
                      selectedFirst = false;
                      selectedSecond = false;
                      selectedThird = false;
                      selectedFourth = true;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
