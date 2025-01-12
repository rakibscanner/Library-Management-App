// wishlist_screen.dart

// import 'package:flutter/material.dart';
//
// class WishlistScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Wishlist Screen', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List of images and their corresponding category names
    final List<Map<String, String>> categories = [
      {'category': 'Fiction', 'image': 'images/b8.png'},
      {'category': 'Mystery', 'image': 'images/ms6.jpg'},
      {'category': 'Science', 'image': 'images/h3.jpg'},
      {'category': 'Romance', 'image': 'images/hr7.jpg'},
      {'category': 'Fantasy', 'image': 'images/ms3.png'},
      {'category': 'Horror', 'image': 'images/sc4.jpeg'},
      {'category': 'Biography', 'image': 'images/b1.jpeg'},
      {'category': 'History', 'image': 'images/hr1.jpeg'},
      {'category': 'Children', 'image': 'images/rm1.jpeg'},
      {'category': 'Thriller', 'image': 'images/ms9.jpeg'},
      {'category': 'Adventure', 'image': 'images/sc1.jpeg'},
      {'category': 'Drama', 'image': 'images/sc2.jpeg'},
      {'category': 'Comedy', 'image': 'images/t1.jpg'},
      {'category': 'Action', 'image': 'images/t3.jpeg'},
      {'category': 'Romantic Comedy', 'image': 'images/ms1.png'},
      {'category': 'Sci-Fi', 'image': 'images/h1.jpeg'},
      {'category': 'Biography', 'image': 'images/ms2.jpeg'},
      {'category': 'Historical Fiction', 'image': 'images/children1.png'},
      {'category': 'Young Adult', 'image': 'images/b2.jpg'},
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Number of columns in the grid
            crossAxisSpacing: 25, // Spacing between columns
            mainAxisSpacing: 25, // Spacing between rows
            childAspectRatio: 1, // Aspect ratio of each card
          ),
          itemCount: categories.length, // Number of items in the grid
          itemBuilder: (context, index) {
            String category = categories[index]['category']!;
            String imagePath = categories[index]['image']!;
            return CategoryCard(category: category, imagePath: imagePath);
          },
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String category;
  final String imagePath;

  CategoryCard({required this.category, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          // Handle category tap (you can navigate to a new screen, etc.)
          print('Tapped on $category');
        },
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            // Image part (top part of the card)
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath, // Different image for each category
                  fit: BoxFit.cover, // This ensures the image covers the entire space
                  width: double.infinity, // Make the image width fill the card
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
