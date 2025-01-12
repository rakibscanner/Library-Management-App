// import 'package:flutter/material.dart';
//
// class AddBookPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Add Book Page', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AddBookPage extends StatefulWidget {
  @override
  _AddBookPageState createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _bookNameController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _genreController = TextEditingController();
  final TextEditingController _copiesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Book',
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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _bookNameController,
                decoration: InputDecoration(
                  labelText: 'Book Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                    borderSide: BorderSide(
                        color: Colors.blue, width: 2), // Border color and width
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the book name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _authorController,
                decoration: InputDecoration(
                  labelText: 'Author',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                    borderSide: BorderSide(
                        color: Colors.blue, width: 2), // Border color and width
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the author\'s name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _genreController,
                decoration: InputDecoration(
                  labelText: 'Genre',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                    borderSide: BorderSide(
                        color: Colors.blue, width: 2), // Border color and width
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the genre';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _copiesController,
                decoration: InputDecoration(
                  labelText: 'No. of Copies',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                    borderSide: BorderSide(
                        color: Colors.blue, width: 2), // Border color and width
                  ),
                ),
                keyboardType:
                    TextInputType.number, // Set the keyboard to number
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of copies';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Process data or call a function to add the book
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Adding book...')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, // Button color
                  foregroundColor: Colors.white, // Text color
                  minimumSize: Size(200, 50), // Resize button (width, height)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                    side: BorderSide(
                        color: Colors.blue, width: 2), // Outline border
                  ),
                ),
                child: Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import '../model/Book.dart';
//
// class AddBookPage extends StatefulWidget {
//   @override
//   _AddBookPageState createState() => _AddBookPageState();
// }
//
// class _AddBookPageState extends State<AddBookPage> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _bookNameController = TextEditingController();
//   final TextEditingController _authorController = TextEditingController();
//   final TextEditingController _genreController = TextEditingController();
//   final TextEditingController _copiesController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Book'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _bookNameController,
//                 decoration: InputDecoration(labelText: 'Book Name'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the book name';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _authorController,
//                 decoration: InputDecoration(labelText: 'Author'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the author\'s name';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _genreController,
//                 decoration: InputDecoration(labelText: 'Genre'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the genre';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _copiesController,
//                 decoration: InputDecoration(labelText: 'No. of Copies'),
//                 keyboardType: TextInputType.number,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the number of copies';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState?.validate() ?? false) {
//                     final newBook = Book(
//                       bookId: DateTime.now().toString(),
//                       name: _bookNameController.text,
//                       author: _authorController.text,
//                       genre: _genreController.text,
//                       availableCopies: int.parse(_copiesController.text),
//                     );
//                     Navigator.pop(context, newBook);
//                   }
//                 },
//                 child: Text('Add Book'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
