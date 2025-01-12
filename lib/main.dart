import 'package:flutter/material.dart';

import 'LoginPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Library Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}













// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Library Management System',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: LoginPage(),
//     );
//   }
// }
//
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   String _errorMessage = '';
//
//   void _login() {
//     String username = _usernameController.text;
//     String password = _passwordController.text;
//
//     // Example login logic: Admin and User
//     if (username == 'admin' && password == 'admin123') {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => AdminPanel()),
//       );
//     } else if (username == 'user' && password == 'user123') {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => UserPanel()),
//       );
//     } else {
//       setState(() {
//         _errorMessage = 'Invalid username or password!';
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Login')),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: _usernameController,
//               decoration: InputDecoration(
//                 labelText: 'Username',
//                 border: OutlineInputBorder(),
//                 contentPadding: EdgeInsets.all(16.0), // Internal padding
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//                 contentPadding: EdgeInsets.all(16.0), // Internal padding
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _login,
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(
//                     vertical: 16.0), // Padding inside the button
//               ),
//               child: Text('Login'),
//             ),
//             if (_errorMessage.isNotEmpty)
//               Padding(
//                 padding: const EdgeInsets.only(top: 16.0),
//                 child: Text(
//                   _errorMessage,
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class AdminPanel extends StatefulWidget {
//   @override
//   _AdminPanelState createState() => _AdminPanelState();
// }
//
// class _AdminPanelState extends State<AdminPanel> {
//   int _selectedIndex = 0;
//
//   final List<Widget> _pages = [
//     DashboardPage(),
//     AddBookPage(),
//     AddUserPage(),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Admin Panel')),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text('Admin'),
//               accountEmail: Text('admin@library.com'),
//               currentAccountPicture: CircleAvatar(
//                 backgroundColor: Colors.white,
//                 child: Icon(Icons.admin_panel_settings,
//                     size: 40, color: Colors.blue),
//               ),
//             ),
//             ListTile(
//               title: Text('Dashboard'),
//               leading: Icon(Icons.dashboard),
//               onTap: () => _onItemTapped(0),
//             ),
//             ListTile(
//               title: Text('Add Book'),
//               leading: Icon(Icons.add_box),
//               onTap: () => _onItemTapped(1),
//             ),
//             ListTile(
//               title: Text('Add User'),
//               leading: Icon(Icons.person_add),
//               onTap: () => _onItemTapped(2),
//             ),
//             Divider(),
//             ListTile(
//               title: Text('Logout'),
//               leading: Icon(Icons.exit_to_app),
//               onTap: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginPage()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       body: _pages[_selectedIndex],
//     );
//   }
// }
//
// class UserPanel extends StatefulWidget {
//   @override
//   _UserPanelState createState() => _UserPanelState();
// }
//
// class _UserPanelState extends State<UserPanel> {
//   int _selectedIndex = 0;
//
//   final List<Widget> _pages = [
//     DashboardPage(),
//     BorrowBookPage(),
//     ReturnBookPage(),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('User Panel')),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text('Regular User'),
//               accountEmail: Text('user@library.com'),
//               currentAccountPicture: CircleAvatar(
//                 backgroundColor: Colors.white,
//                 child: Icon(Icons.person, size: 40, color: Colors.blue),
//               ),
//             ),
//             ListTile(
//               title: Text('Dashboard'),
//               leading: Icon(Icons.dashboard),
//               onTap: () => _onItemTapped(0),
//             ),
//             ListTile(
//               title: Text('Borrow Book'),
//               leading: Icon(Icons.library_books),
//               onTap: () => _onItemTapped(1),
//             ),
//             ListTile(
//               title: Text('Return Book'),
//               leading: Icon(Icons.refresh),
//               onTap: () => _onItemTapped(2),
//             ),
//             Divider(),
//             ListTile(
//               title: Text('Logout'),
//               leading: Icon(Icons.exit_to_app),
//               onTap: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginPage()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       body: _pages[_selectedIndex],
//     );
//   }
// }
//
// class DashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child:
//             Text('Welcome to the Dashboard', style: TextStyle(fontSize: 24)));
//   }
// }
//
// class AddBookPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('Add Book Page', style: TextStyle(fontSize: 24)));
//   }
// }
//
// class AddUserPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('Add User Page', style: TextStyle(fontSize: 24)));
//   }
// }
//
// class BorrowBookPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Text('Borrow Book Page', style: TextStyle(fontSize: 24)));
//   }
// }
//
// class ReturnBookPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Text('Return Book Page', style: TextStyle(fontSize: 24)));
//   }
// }
