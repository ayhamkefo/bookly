import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BestSellerBookDetails extends StatelessWidget {
  const BestSellerBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: const Text(
            'Harry Potter and the Goblet of Fire',
            style: Styles.textStyle20,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          'J.K. Rowling',
          style: Styles.textStyle15.copyWith(color: Colors.white60),
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          children: [
            Text(
              "19.99\$",
              style: Styles.textStyle20,
            ),
            SizedBox(
              width: 39,
            ),
            BooksRating()
          ],
        ),
      ],
    );
  }
}
