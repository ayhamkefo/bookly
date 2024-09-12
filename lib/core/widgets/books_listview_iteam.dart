import 'package:bookly/core/utils/routers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'books_listview_details.dart';
import 'books_listview_image.dart';

class BooksListViewIteam extends StatelessWidget {
  const BooksListViewIteam({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          GoRouter.of(context).push(Routers.kBookDetailsView, extra: book),
      child: Row(
        children: [
          BooksListViewImage(
            imgUrl: book.volumeInfo!.imageLinks?.thumbnail! ?? '',
          ),
          const SizedBox(
            width: 30,
          ),
          BooksListViewDetails(
            book: book,
          )
        ],
      ),
    );
  }
}
