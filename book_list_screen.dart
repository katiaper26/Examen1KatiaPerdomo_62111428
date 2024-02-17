// book_list_screen.dart

import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/json_reader.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<Book> books = [];

  @override
  void initState() {
    super.initState();
    _fetchBooks();
  }

  Future<void> _fetchBooks() async {
    final data = await JsonReader.readJson('assets/data.json');
    setState(() {
      books = List<Book>.from(data['books'].map((book) => Book(
        title: book['title'],
        author: book['author'],
        villains: List<String>.from(book['villains']),
      )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Libros de Stephen King'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(books[index].title),
            onTap: () {
              // Navegar a la pantalla de detalles del libro
            },
          );
        },
      ),
    );
  }
}