import 'package:flutter/material.dart';
import 'package:lms1/User/AboutUs.dart';
import 'package:lms1/User/UserProfilePage.dart';

import 'BorrowBookPage.dart';
import '../DashboardPage.dart';
import '../LoginPage.dart';
import 'ReturnBookPage.dart';
// import 'dashboard_page.dart';
// import 'borrow_book_page.dart';
// import 'return_book_page.dart';

class UserPanel extends StatefulWidget {
  @override
  _UserPanelState createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardPage(),
    UserProfilePage(),
    BorrowBookPage(),
    ReturnBookPage(),
    AboutUsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Panel')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Regular User'),
              accountEmail: Text('user@library.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.blue),
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              leading: Icon(Icons.dashboard),
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              title: Text('My Profile'),
              leading: Icon(Icons.account_circle),
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              title: Text('Borrowed Book'),
              leading: Icon(Icons.receipt),
              onTap: () => _onItemTapped(2),
            ),
            ListTile(
              title: Text('Returned Book'),
              leading: Icon(Icons.refresh),
              onTap: () => _onItemTapped(3),
            ),
            ListTile(
              title: Text('About us'),
              leading: Icon(Icons.info),
              onTap: () => _onItemTapped(4),
            ),
            Divider(),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
