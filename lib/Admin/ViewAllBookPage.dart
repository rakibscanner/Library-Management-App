// import 'package:flutter/material.dart';
//
// class ViewAllBookPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('View all Book Page', style: TextStyle(fontSize: 24)),
//     );
//   }
// }


// with implementation logic
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ViewAllBookPage extends StatefulWidget {
  @override
  _ViewAllBookPageState createState() => _ViewAllBookPageState();
}

class _ViewAllBookPageState extends State<ViewAllBookPage> {
  List<Map<String, dynamic>> _books = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    const String apiUrl = 'https://example.com/api/books'; // Replace with your API endpoint
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final data = json.decode(response.body) as List;
        setState(() {
          _books = data
              .map((book) => {
            'id': book['id'],
            'name': book['name'],
            'author': book['author'],
            'genre': book['genre'],
            'copies': book['copies'].toString(),
          })
              .toList();
          _isLoading = false;
        });
      } else {
        throw Exception('Failed to load books');
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error fetching books: $e')),
      );
    }
  }

  Future<void> deleteBook(String id) async {
    const String deleteApiUrl = 'https://example.com/api/books'; // Replace with your delete endpoint
    try {
      final response = await http.delete(Uri.parse('$deleteApiUrl/$id'));
      if (response.statusCode == 200) {
        setState(() {
          _books.removeWhere((book) => book['id'] == id);
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Book deleted successfully')),
        );
      } else {
        throw Exception('Failed to delete book');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error deleting book: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View All Books'),
        centerTitle: true,
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _books.isEmpty
          ? Center(
        child: Text(
          'No books found!',
          style: TextStyle(fontSize: 18),
        ),
      )
          : SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Author')),
            DataColumn(label: Text('Genre')),
            DataColumn(label: Text('Copies')),
            DataColumn(label: Text('Action')),
          ],
          rows: _books
              .map(
                (book) => DataRow(
              cells: [
                DataCell(Text(book['id'].toString())),
                DataCell(Text(book['name'])),
                DataCell(Text(book['author'])),
                DataCell(Text(book['genre'])),
                DataCell(Text(book['copies'])),
                DataCell(
                  ElevatedButton(
                    onPressed: () {
                      deleteBook(book['id'].toString());
                    },
                    child: Text('Delete'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}
