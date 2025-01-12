// category_screen.dart

// import 'package:flutter/material.dart';
//
// class CategoryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//
//   }
// }


// import 'package:flutter/material.dart';
//
// class CategoryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // List of book categories
//     final List<String> categories = [
//       'Fiction',
//       'Mystery',
//       'Science',
//       'Romance',
//       'Fantasy',
//       'Horror',
//       'Biography',
//       'History',
//       'Children',
//       'Thriller',
//     ];
//
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(60.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // Number of columns
//             crossAxisSpacing: 20, // Spacing between columns
//             mainAxisSpacing: 20, // Spacing between rows
//             childAspectRatio: 50/50, // Aspect ratio of each item
//           ),
//           itemCount: categories.length, // Number of items in the grid
//           itemBuilder: (context, index) {
//             return CategoryCard(category: categories[index]);
//           },
//         ),
//       ),
//     );
//   }
// }
//
// // CategoryCard widget to display each category in the grid
// class CategoryCard extends StatelessWidget {
//   final String category;
//
//   CategoryCard({required this.category});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: InkWell(
//         onTap: () {
//           // Handle category tap (you can navigate to a new screen, etc.)
//           print('Tapped on $category');
//         },
//         borderRadius: BorderRadius.circular(10),
//         child: Padding(
//           padding: EdgeInsets.all(16),
//           child: Center(
//             child: Text(
//               category,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
//
// class CategoryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // List of book categories and their respective image paths
//     final Map<String, String> categories = {
//       'Fiction': 'images/fiction.png',
//       'Mystery': 'images/mystery.jpg',
//       'Science': 'images/science.jpg',
//       'Romance': 'images/romance.jpg',
//       'Fantasy': 'images/fantasy.jpg',
//       'Horror': 'images/horror.jpg',
//       'Biography': 'images/biography.jpg',
//       'History': 'images/history.png',
//       'Children': 'images/children.png',
//       'Thriller': 'images/thriller.png',
//     };
//
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // Number of columns
//             crossAxisSpacing: 20, // Spacing between columns
//             mainAxisSpacing: 40, // Spacing between rows
//             childAspectRatio: 1, // Aspect ratio of each item
//           ),
//           itemCount: categories.length, // Number of items in the grid
//           itemBuilder: (context, index) {
//             String category = categories.keys.elementAt(index);
//             String imagePath = categories[category]!;
//             return CategoryCard(category: category, imagePath: imagePath);
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class CategoryCard extends StatelessWidget {
//   final String category;
//   final String imagePath;
//
//   CategoryCard({required this.category, required this.imagePath});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: InkWell(
//         onTap: () {
//           // Handle category tap (you can navigate to a new screen, etc.)
//           print('Tapped on $category');
//         },
//         borderRadius: BorderRadius.circular(10),
//         child: Stack(
//           children: [
//             // Background image (each card gets its own image)
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 imagePath, // Different image for each category
//                 fit: BoxFit.cover,
//                 height: double.infinity,
//                 width: double.infinity,
//               ),
//             ),
//             // Text on top of the image
//             Positioned(
//               bottom: 16,
//               left: 16,
//               right: 16,
//               child: Text(
//                 category,
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   shadows: [
//                     Shadow(
//                       blurRadius: 5.0,
//                       color: Colors.black.withOpacity(0.7),
//                       offset: Offset(2.0, 2.0),
//                     ),
//                   ],
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List of book categories and their respective image paths
    final Map<String, String> categories = {
      'Fiction': 'images/fiction.png',
      'Mystery': 'images/mystery.jpg',
      'Science': 'images/science.jpg',
      'Romance': 'images/romance.jpg',
      'Fantasy': 'images/fantasy.jpg',
      'Horror': 'images/horror.jpg',
      'Biography': 'images/biography.jpg',
      'History': 'images/history.png',
      'Children': 'images/children.png',
      'Thriller': 'images/thriller.png',
    };

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 20, // Spacing between columns
            mainAxisSpacing: 30, // Spacing between rows
            childAspectRatio: 1, // Aspect ratio of each item
          ),
          itemCount: categories.length, // Number of items in the grid
          itemBuilder: (context, index) {
            String category = categories.keys.elementAt(index);
            String imagePath = categories[category]!;
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
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath, // Image path
                fit: BoxFit.cover,
                height: 155, // You can adjust the height as needed
                width: double.infinity,
              ),
            ),
            // Text part (below the image)
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // You can change to white if you want
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
