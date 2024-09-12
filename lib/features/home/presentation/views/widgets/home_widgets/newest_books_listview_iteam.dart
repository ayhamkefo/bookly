import 'package:bookly/core/utils/routers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'newest_books_listview_details.dart';
import 'newest_books_listview_image.dart';

class NewestBooksListViewIteam extends StatelessWidget {
  const NewestBooksListViewIteam({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          GoRouter.of(context).push(Routers.kBookDetailsView, extra: book),
      child: Row(
        children: [
          NewestBooksListViewImage(
            imgUrl: book.volumeInfo!.imageLinks?.thumbnail! ?? '',
          ),
          const SizedBox(
            width: 30,
          ),
          NewestBooksListViewDetails(
            book: book,
          )
        ],
      ),
    );
  }
}
