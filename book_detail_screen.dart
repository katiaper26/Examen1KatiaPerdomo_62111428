// screens/book_detail_screen.dart

import 'package:flutter/material.dart';
import '../models/book.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  BookDetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Autor: ${book.author}'),
            SizedBox(height: 16.0),
            Text('Villanos asociados:'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: book.villains
                  .map((villain) => Text('- $villain'))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}