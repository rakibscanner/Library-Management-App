import 'package:flutter/material.dart';
import 'package:lms1/Admin/AdminProfilePage.dart';

import 'AddBookPage.dart';
import 'AddUserPage.dart';
import '../DashboardPage.dart';
import '../LoginPage.dart';
import 'ViewAllBookPage.dart';
import 'ViewAllUserPage.dart';
// import 'dashboard_page.dart';
// import 'add_book_page.dart';
// import 'add_user_page.dart';

class AdminPanel extends StatefulWidget {
  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardPage(),
    AdminProfilePage(),
    AddBookPage(),
    ViewAllBookPage(),
    AddUserPage(),
    ViewAllUserPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Panel')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Admin'),
              accountEmail: Text('admin@library.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.admin_panel_settings,
                    size: 40, color: Colors.blue),
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
              title: Text('Add Books'),
              leading: Icon(Icons.add_box),
              onTap: () => _onItemTapped(2),
            ),
            ListTile(
              title: Text('View All Books'),
              leading: Icon(Icons.list_alt_outlined),
              onTap: () => _onItemTapped(3),
            ),

            ListTile(
              title: Text('Register User'),
              leading: Icon(Icons.person_add),
              onTap: () => _onItemTapped(4),
            ),
            ListTile(
              title: Text('View All Users'),
              leading: Icon(Icons.group),
              onTap: () => _onItemTapped(5),
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
