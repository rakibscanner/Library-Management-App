// import 'package:flutter/material.dart';
//
// class ViewAllUserPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('View all user Page', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// its only design

// import 'package:flutter/material.dart';
//
// class ViewAllUserPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Static sample data for the table (you will fetch this data from an API)
//     final List<Map<String, String>> users = [
//       {
//         'userId': '1',
//         'name': 'John Doe',
//         'username': 'john_doe',
//         'role': 'Admin',
//       },
//       {
//         'userId': '2',
//         'name': 'Jane Smith',
//         'username': 'jane_smith',
//         'role': 'User',
//       },
//       {
//         'userId': '3',
//         'name': 'Michael Brown',
//         'username': 'michael_brown',
//         'role': 'User',
//       },
//     ];
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'View All Users',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.black87,
//             letterSpacing: 1.2,
//             fontFamily: 'Arial',
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: users.isEmpty
//             ? Center(child: Text('No users available.'))
//             : SingleChildScrollView(
//           scrollDirection: Axis.horizontal, // Horizontal scrolling for wide tables
//           child: DataTable(
//             columns: const [
//               DataColumn(label: Text('User ID')),
//               DataColumn(label: Text('Name')),
//               DataColumn(label: Text('Username')),
//               DataColumn(label: Text('Role')),
//               DataColumn(label: Text('View History')),
//               DataColumn(label: Text('Edit User')),
//             ],
//             rows: List.generate(
//               users.length,
//                   (index) {
//                 final user = users[index];
//                 return DataRow(
//                   cells: [
//                     DataCell(Text(user['userId'] ?? '')),
//                     DataCell(Text(user['name'] ?? '')),
//                     DataCell(Text(user['username'] ?? '')),
//                     DataCell(Text(user['role'] ?? '')),
//                     DataCell(IconButton(
//                       icon: Icon(Icons.history),
//                       onPressed: () {
//                         // Handle view history action
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text('Viewing history for ${user['name']}')),
//                         );
//                       },
//                     )),
//                     DataCell(IconButton(
//                       icon: Icon(Icons.edit),
//                       onPressed: () {
//                         // Handle edit user action
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text('Editing ${user['name']}')),
//                         );
//                       },
//                     )),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class ViewAllUserPage extends StatefulWidget {
//   @override
//   _ViewAllUserPageState createState() => _ViewAllUserPageState();
// }
//
// class _ViewAllUserPageState extends State<ViewAllUserPage> {
//   List<Map<String, dynamic>> users = [];
//
//   Future<void> fetchUsers() async {
//     final response = await http.get(Uri.parse('https://localhost:8080/users'));
//
//     if (response.statusCode == 200) {
//       final List<dynamic> data = jsonDecode(response.body);
//       setState(() {
//         users = data.map((e) => e as Map<String, dynamic>).toList();
//       });
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to load users')),
//       );
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     fetchUsers();  // Fetch users when the page is initialized
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('View All Users'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: users.isEmpty
//             ? Center(child: CircularProgressIndicator())
//             : SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: DataTable(
//             columns: const [
//               DataColumn(label: Text('User ID')),
//               DataColumn(label: Text('Name')),
//               DataColumn(label: Text('Username')),
//               DataColumn(label: Text('Role')),
//               DataColumn(label: Text('View History')),
//               DataColumn(label: Text('Edit')),
//             ],
//             rows: List.generate(
//               users.length,
//                   (index) {
//                 final user = users[index];
//                 return DataRow(
//                   cells: [
//                     DataCell(Text(user['id'].toString())),
//                     DataCell(Text(user['name'])),
//                     DataCell(Text(user['username'])),
//                     DataCell(Text(user['role'])),
//                     DataCell(IconButton(
//                       icon: Icon(Icons.history),
//                       onPressed: () {
//                         // Implement view history functionality
//                       },
//                     )),
//                     DataCell(IconButton(
//                       icon: Icon(Icons.edit),
//                       onPressed: () {
//                         // Implement edit functionality
//                       },
//                     )),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ViewAllUserPage extends StatefulWidget {
  @override
  _ViewAllUserPageState createState() => _ViewAllUserPageState();
}

class _ViewAllUserPageState extends State<ViewAllUserPage> {
  List<Map<String, dynamic>> users = [];

  Future<void> fetchUsers() async {
    // Replacing the localhost API with a mock API (jsonplaceholder.typicode.com) for testing
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      setState(() {
        users = data.map((e) => e as Map<String, dynamic>).toList();
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load users')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUsers(); // Fetch users when the page is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'View All Users',
          style: TextStyle(
            fontSize: 24, // Set font size
            fontWeight: FontWeight.bold, // Set font weight (e.g., bold)
            color: Colors.black87, // Set text color
            letterSpacing: 1.2, // Set letter spacing
            fontFamily: 'Arial', // Set custom font family
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: users.isEmpty
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('User ID')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Username')),
                    DataColumn(label: Text('Role')),
                    DataColumn(label: Text('View History')),
                    DataColumn(label: Text('Edit')),
                  ],
                  rows: List.generate(
                    users.length,
                    (index) {
                      final user = users[index];
                      return DataRow(
                        cells: [
                          DataCell(Text(user['id'].toString())),
                          DataCell(Text(user['name'])),
                          DataCell(Text(user['username'])),
                          DataCell(Text('User')), // Mocking role as 'User'
                          DataCell(IconButton(
                            icon: Icon(Icons.history),
                            onPressed: () {
                              // Implement view history functionality
                            },
                          )),
                          DataCell(IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              // Implement edit functionality
                            },
                          )),
                        ],
                      );
                    },
                  ),
                ),
              ),
      ),
    );
  }
}
