// import 'package:flutter/material.dart';
//
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Profile Page', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../LoginPage.dart';

class AdminProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Profile"),
        // leading: Icon(Icons.account_circle), // Profile icon
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Information Section
            UserAccountsDrawerHeader(
              accountName: Text('Admin'),
              accountEmail: Text('admin@library.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.admin_panel_settings,
                    size: 40, color: Colors.blue),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'John Doe', // Admin name
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'john.doe@email.com', // Admin email
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            // Manage Users Section
            ListTile(
              leading: Icon(Icons.work_history_outlined),
              title: Text('Admin Activity History'),
              subtitle: Text('View your admin activity history'),
              onTap: () {
                // Navigate to Manage Users screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AdminActivityHistoryPage()),
                );
              },
            ),
            Divider(),
            // Library Catalog Section
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text('Manage Library Catalog'),
              subtitle: Text('Add, edit or delete books'),
              onTap: () {
                // Navigate to Manage Users screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageCatalogPage()),
                );
              },
            ),
            Divider(),
            // Logout Button
            ElevatedButton(
              onPressed: () {
                // Perform logout action
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.greenAccent, // Red color for logout button
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder for Admin Activity History Page
class AdminActivityHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Activity History'),
      ),
      body: Center(
        child: Text('View the admin’s past activities and logs here.'),
      ),
    );
  }
}

// Placeholder for Manage Library Catalog Page
class ManageCatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Library Catalog'),
      ),
      body: Center(
        child:
            Text('Here, you can add, edit, or delete books from the catalog.'),
      ),
    );
  }
}
