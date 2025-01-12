// import 'package:flutter/material.dart';
//
// class AboutUsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('About us Page', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Us",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold, // Make the text bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // // Logo or Image at the top
              // CircleAvatar(
              //   radius: 80,
              //   backgroundImage: AssetImage('assets/library_logo.png'), // Replace with your image
              // ),
              // SizedBox(height: 20),

              // Title of the About Us Section
              Text(
                "Welcome to Our Online Library",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),

              // Description
              Text(
                "Our library aims to provide users with an easy way to borrow, manage, and explore a wide range of books online. "
                "We offer a user-friendly platform for browsing books, borrowing them, and returning them conveniently. "
                "Our goal is to make reading accessible and enjoyable for everyone.",
                style: TextStyle(fontSize: 16, height: 1.6),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Mission Statement
              Text(
                "Our Mission",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "We strive to foster a culture of reading and education by providing a vast collection of books, accessible to all members of our community.",
                style: TextStyle(fontSize: 16, height: 1.6),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Contact Information Section
              Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Email: contact@onlinelibrary.com",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "Phone: +123 456 7890",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              // Social Media or Website Section (Optional)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(FontAwesomeIcons.facebook,
                        color: Colors.blueAccent),
                    onPressed: () {
                      // Add link to Facebook page
                    },
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.twitter,
                        color: Colors.blueAccent),
                    onPressed: () {
                      // Add link to Twitter page
                    },
                  ),
                  IconButton(
                    icon:
                        Icon(FontAwesomeIcons.instagram, color: Colors.purple),
                    onPressed: () {
                      // Add link to Twitter page
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.link, color: Colors.blueAccent),
                    onPressed: () {
                      // Add link to website
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
