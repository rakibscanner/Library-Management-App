// import 'package:flutter/material.dart';
//
// class BorrowBookPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Borrow Book Page', style: TextStyle(fontSize: 24)),
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../Admin/AddBookPage.dart';
import '../model/Book.dart';


class BorrowBookPage extends StatefulWidget {
  @override
  _BorrowBookPageState createState() => _BorrowBookPageState();
}

class _BorrowBookPageState extends State<BorrowBookPage> {
  // Sample list of books
  List<Book> books = [];

  // Function to borrow a book
  void borrowBook(int index) {
    setState(() {
      if (books[index].availableCopies > 0) {
        books[index].availableCopies--;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('You have borrowed "${books[index].name}"')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('No available copies left for "${books[index].name}"')));
      }
    });
  }

  // Function to navigate to AddBookPage to add new books
  void navigateToAddBookPage() async {
    final newBook = await Navigator.push<Book>(
      context,
      MaterialPageRoute(builder: (context) => AddBookPage()),
    );

    if (newBook != null) {
      setState(() {
        books.add(newBook); // Add new book to the list
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Borrow Books", style: TextStyle(fontSize: 24)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: navigateToAddBookPage,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: books.isEmpty
            ? Center(child: Text("No books available"))
            : SingleChildScrollView(
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Book ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Author')),
              DataColumn(label: Text('Genre')),
              DataColumn(label: Text('No. of Copies')),
              DataColumn(label: Text('Action')),
            ],
            rows: List.generate(
              books.length,
                  (index) => DataRow(cells: [
                DataCell(Text(books[index].bookId)),
                DataCell(Text(books[index].name)),
                DataCell(Text(books[index].author)),
                DataCell(Text(books[index].genre)),
                DataCell(Text('${books[index].availableCopies}')),
                DataCell(
                  ElevatedButton(
                    onPressed: () => borrowBook(index),
                    child: Text('Borrow'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
