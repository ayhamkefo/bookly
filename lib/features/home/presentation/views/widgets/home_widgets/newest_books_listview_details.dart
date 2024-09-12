import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../book_rating.dart';

class NewestBooksListViewDetails extends StatelessWidget {
  const NewestBooksListViewDetails({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            book.volumeInfo!.title!,
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          book.volumeInfo!.authors![0],
          style: Styles.textStyle16.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            const Text(
              'Free',
              style: Styles.textStyle18,
            ),
            const SizedBox(
              width: 20,
            ),
            BooksRating(
              bookRating: book.volumeInfo!.averageRating ?? 0,
              ratingCount: book.volumeInfo!.ratingsCount ?? 0,
            )
          ],
        ),
      ],
    );
  }
}
