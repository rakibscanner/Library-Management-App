import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Page",
          style: TextStyle(
            fontSize: 24, // Increase this value to change the size
          ),
        ),
        leading: Icon(Icons.account_circle), // Profile icon
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Information Section
            CircleAvatar(
              radius: 60, // Circular avatar for profile picture
              backgroundImage: AssetImage(
                  'assets/images/profile_placeholder.png'), // Profile image
            ),
            SizedBox(height: 16),
            Text(
              'John Doe', // Placeholder name
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'john.doe@email.com', // Placeholder email
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            // Borrowed Books Section
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Borrowed Books'),
              subtitle: Text('5 books borrowed'),
              onTap: () {
                // Navigate to Borrowed Books screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BorrowedBooksPage()),
                );
              },
            ),
            Divider(),
            // Reading History Section
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Reading History'),
              subtitle: Text('View your reading history'),
              onTap: () {
                // Navigate to Reading History screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReadingHistoryPage()),
                );
              },
            ),
            Divider(),
            // Edit Profile Section
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit Profile'),
              subtitle: Text('Update your personal details'),
              onTap: () {
                // Navigate to Edit Profile screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
            ),
            Divider(),
            // Logout Button
            ElevatedButton(
              onPressed: () {
                // Perform logout action
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

// Placeholder Borrowed Books Page
class BorrowedBooksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Borrowed Books'),
      ),
      body: Center(
        child: Text('List of borrowed books will appear here.'),
      ),
    );
  }
}

// Placeholder Reading History Page
class ReadingHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reading History'),
      ),
      body: Center(
        child: Text('List of reading history will appear here.'),
      ),
    );
  }
}

// Placeholder Reading History Page
class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: Text('Users details will appear here.'),
      ),
    );
  }
}
